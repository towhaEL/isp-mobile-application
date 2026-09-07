import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isp_selfcare/core/extensions/money_extension.dart';
import 'package:isp_selfcare/core/injector/injector.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';
import 'package:isp_selfcare/l10n/l10n.dart';
import 'package:isp_selfcare/presentation/route/app_router.gr.dart';
import 'package:isp_selfcare/presentation/screen/dashboard/cubit/connections_cubit.dart';
import 'package:isp_selfcare/presentation/screen/plan_change/cubit/plan_change_cubit.dart';
import 'package:isp_selfcare/presentation/theme/base/theme_extension.dart';
import 'package:isp_selfcare/presentation/widgets/industry/industry.dart';

/// What switching plan costs today, before the customer commits to it.
@RoutePage()
class PlanChangeScreen extends StatelessWidget {
  const PlanChangeScreen({
    required this.connectionId,
    required this.packageId,
    super.key,
  });

  final int connectionId;
  final int packageId;

  @override
  Widget build(BuildContext context) => BlocProvider<PlanChangeCubit>(
    create: (_) =>
        injector<PlanChangeCubit>()
          ..load(connectionId: connectionId, packageId: packageId),
    child: _PlanChangeView(connectionId: connectionId, packageId: packageId),
  );
}

class _PlanChangeView extends StatelessWidget {
  const _PlanChangeView({required this.connectionId, required this.packageId});

  final int connectionId;
  final int packageId;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final palette = context.palette;
    final connection = context.watch<ConnectionsCubit>().state.selected;

    return BlocBuilder<PlanChangeCubit, PlanChangeState>(
      builder: (context, state) {
        if (!state.isReady) return const DsLoading(height: 320);
        final target = state.target!;
        final quote = state.quote!;

        return ListView(
          padding: const EdgeInsets.all(16),
          children: [
            _TargetPlanPanel(target: target, current: connection?.package),
            const SizedBox(height: 18),
            DsKicker(l10n.proRata),
            const SizedBox(height: 6),
            DsKeyValueTable(
              rows: [
                DsKeyValueRow(
                  label: l10n.daysLeftInCycle,
                  value: '${quote.daysLeftInCycle}',
                ),
                DsKeyValueRow(
                  label: l10n.creditForUnusedDays,
                  // Shown as a deduction, which is what it is.
                  value: '− ${quote.creditForUnusedDays.toMoney(context)}',
                ),
                DsKeyValueRow(
                  label: l10n.newPlanDays(quote.daysLeftInCycle),
                  value: quote.newPlanRemainder.toMoney(context),
                ),
                DsKeyValueRow(
                  label: l10n.dueToday,
                  value: quote.dueToday.toMoney(context),
                  emphasised: true,
                  labelColor: palette.accentRamp[900],
                  valueColor: palette.accentRamp[900],
                ),
                DsKeyValueRow(
                  label: l10n.fromNextCycle,
                  value:
                      '${quote.nextCycleAmount.toMoney(context)}'
                      '${l10n.month}',
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              l10n.proRataNote,
              style: AppFonts.body(size: 12, color: palette.neutralRamp[600]),
            ),
            const SizedBox(height: 18),
            DsButton(
              label: l10n.confirmSwitch,
              variant: DsButtonVariant.primary,
              blueprint: true,
              block: true,
              minHeight: 52,
              fontSize: 15,
              onPressed: state.isConfirming
                  ? null
                  : () => _confirm(context, target),
            ),
            const SizedBox(height: 8),
            DsButton(
              label: l10n.cancel,
              variant: DsButtonVariant.ghost,
              block: true,
              minHeight: 48,
              onPressed: () => context.navigateTo(const PackagesRoute()),
            ),
          ],
        );
      },
    );
  }

  Future<void> _confirm(BuildContext context, PackageEntity target) async {
    final ok = await context.read<PlanChangeCubit>().confirm(
      connectionId: connectionId,
      packageId: packageId,
    );
    if (!context.mounted || !ok) return;

    // The new plan changes what the line costs next cycle, so the shell's
    // invoice list is stale the moment this succeeds.
    await context.read<ConnectionsCubit>().load();
    if (!context.mounted) return;
    await context.router.push(PlanQueuedRoute(planName: target.name));
  }
}

/// The dark panel naming the plan being switched to and the one being left.
class _TargetPlanPanel extends StatelessWidget {
  const _TargetPlanPanel({required this.target, required this.current});

  final PackageEntity target;
  final PackageEntity? current;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final l10n = context.l10n;
    final ink = palette.onAccentSurface;

    return Container(
      color: palette.accentRamp[900],
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DsKicker(
            l10n.switchingTo,
            color: palette.accentRamp[300],
            trackingEm: 0.14,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: Text(
                  target.name,
                  style: AppFonts.heading(size: 28, color: ink, height: 1.1),
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '${target.downloadMbps.round()}',
                    style: AppFonts.heading(size: 28, color: ink, height: 1),
                  ),
                  Text(
                    l10n.mbpsUnit.toUpperCase(),
                    style: AppFonts.kicker(
                      size: 10,
                      color: palette.accentRamp[300],
                      trackingEm: 0.1,
                    ),
                  ),
                ],
              ),
            ],
          ),
          if (current != null) ...[
            const SizedBox(height: 6),
            Text(
              '${l10n.from} ${current!.name} · '
              '${current!.downloadMbps.round()} ${l10n.mbpsUnit}',
              style: AppFonts.body(size: 12.5, color: palette.accentRamp[300]),
            ),
          ],
        ],
      ),
    );
  }
}
