import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isp_selfcare/core/extensions/money_extension.dart';
import 'package:isp_selfcare/core/injector/injector.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';
import 'package:isp_selfcare/l10n/l10n.dart';
import 'package:isp_selfcare/presentation/route/app_router.gr.dart';
import 'package:isp_selfcare/presentation/screen/dashboard/cubit/connections_cubit.dart';
import 'package:isp_selfcare/presentation/screen/packages/cubit/packages_cubit.dart';
import 'package:isp_selfcare/presentation/theme/base/theme_extension.dart';
import 'package:isp_selfcare/presentation/widgets/industry/industry.dart';
import 'package:isp_selfcare/presentation/widgets/util/date_format.dart';

/// The plan catalogue, and the spec of the one the customer is on.
@RoutePage()
class PackagesScreen extends StatelessWidget {
  const PackagesScreen({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider<PackagesCubit>(
    create: (_) => injector<PackagesCubit>()..load(),
    child: const _PackagesView(),
  );
}

class _PackagesView extends StatelessWidget {
  const _PackagesView();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final connection = context.watch<ConnectionsCubit>().state.selected;

    return BlocBuilder<PackagesCubit, PackagesState>(
      builder: (context, state) {
        final cubit = context.read<PackagesCubit>();

        return ListView(
          padding: const EdgeInsets.all(16),
          children: [
            DsSegmented(
              labels: [l10n.allPlans, l10n.current],
              selectedIndex: state.showAll ? 0 : 1,
              onSelected: (i) => i == 0 ? cubit.showAll() : cubit.showCurrent(),
            ),
            const SizedBox(height: 18),
            if (state.status.isLoading || state.status.initial)
              const DsLoading()
            else if (state.showAll)
              _PlanList(packages: state.packages, connection: connection)
            else
              _CurrentPlanSpec(connection: connection),
          ],
        );
      },
    );
  }
}

class _PlanList extends StatelessWidget {
  const _PlanList({required this.packages, required this.connection});

  final List<PackageEntity> packages;
  final ConnectionEntity? connection;

  @override
  Widget build(BuildContext context) => Column(
    children: [
      for (var i = 0; i < packages.length; i++) ...[
        if (i > 0) const SizedBox(height: 14),
        _PlanCard(
          package: packages[i],
          isCurrent: packages[i].id == connection?.packageId,
          connectionId: connection?.id,
        ),
      ],
    ],
  );
}

class _PlanCard extends StatelessWidget {
  const _PlanCard({
    required this.package,
    required this.isCurrent,
    required this.connectionId,
  });

  final PackageEntity package;
  final bool isCurrent;
  final int? connectionId;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final l10n = context.l10n;

    return BlueprintBox(
      // The plan you are on is framed in the accent and tinted; everything
      // else is a plain hairline. One glance answers "which is mine".
      borderColor: isCurrent ? palette.accent : palette.accentRamp[200],
      background: isCurrent ? palette.accentRamp[100] : Colors.transparent,
      padding: const EdgeInsets.all(14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  package.name,
                  style: AppFonts.heading(size: 20, color: palette.text),
                ),
              ),
              const SizedBox(width: 8),
              if (isCurrent)
                DsKicker(
                  l10n.current,
                  color: palette.accentRamp[700],
                  trackingEm: 0.1,
                ),
            ],
          ),
          const SizedBox(height: 8),
          _SpecPair(package: package),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: DsButton(
                  label: l10n.details,
                  variant: DsButtonVariant.secondary,
                  minHeight: 46,
                  onPressed: () => showDsToast(
                    context,
                    package.description ?? package.speedLabel,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: DsButton(
                  label: isCurrent ? l10n.currentPlan : l10n.switchLabel,
                  blueprint: !isCurrent,
                  minHeight: 46,
                  background: isCurrent ? Colors.transparent : palette.accent,
                  foreground: isCurrent ? palette.neutralRamp[600] : palette.bg,
                  borderColor: isCurrent ? palette.divider : palette.accent,
                  onPressed: isCurrent || connectionId == null
                      ? null
                      : () => context.router.push(
                          PlanChangeRoute(
                            connectionId: connectionId!,
                            packageId: package.id,
                          ),
                        ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/// The two-cell speed / price plate.
class _SpecPair extends StatelessWidget {
  const _SpecPair({required this.package});

  final PackageEntity package;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final l10n = context.l10n;

    Widget cell(String value, String unit) => Expanded(
      child: Container(
        color: palette.bg,
        padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 9),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            FittedBox(
              fit: BoxFit.scaleDown,
              alignment: Alignment.centerLeft,
              child: Text(
                value,
                style: AppFonts.heading(
                  size: 30,
                  color: palette.accentRamp[800],
                  height: 1,
                ),
              ),
            ),
            Text(
              unit.toUpperCase(),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppFonts.body(
                size: 11,
                color: palette.neutralRamp[600],
                letterSpacing: 11 * 0.1,
              ),
            ),
          ],
        ),
      ),
    );

    return Container(
      color: palette.accentRamp[200],
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            cell('${package.downloadMbps.round()}', l10n.mbpsUnit),
            const SizedBox(width: 1),
            cell(package.price.toAmount(), l10n.perMonth),
          ],
        ),
      ),
    );
  }
}

/// The "Current" tab: the full spec of the plan on the selected line.
class _CurrentPlanSpec extends StatelessWidget {
  const _CurrentPlanSpec({required this.connection});

  final ConnectionEntity? connection;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final l10n = context.l10n;
    final package = connection?.package;

    if (connection == null || package == null) {
      return DsEmptyState(
        iconPath: AppIcons.pkg,
        title: l10n.currentPlan,
        body: l10n.noNotifBody,
      );
    }

    return BlueprintBox(
      borderColor: palette.accentRamp[300],
      padding: const EdgeInsets.fromLTRB(16, 18, 16, 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DsKicker(
            l10n.currentPlan,
            color: palette.accentRamp[700],
            trackingEm: 0.12,
          ),
          const SizedBox(height: 2),
          Text(
            package.name,
            style: AppFonts.heading(size: 32, color: palette.accentRamp[900]),
          ),
          const SizedBox(height: 14),
          DsKeyValueTable(
            rows: [
              DsKeyValueRow(label: l10n.bandwidth, value: package.speedLabel),
              DsKeyValueRow(
                label: l10n.monthly,
                value: '${package.price.toMoney(context)}${l10n.inclVat}',
              ),
              DsKeyValueRow(label: l10n.dataCap, value: l10n.unmetered),
              if (connection!.expiresAt != null)
                DsKeyValueRow(
                  label: l10n.expires,
                  value: formatDayMonthYear(connection!.expiresAt!),
                ),
              DsKeyValueRow(
                label: l10n.titleSupport,
                value: l10n.n24HoursHotline16335,
              ),
              DsKeyValueRow(label: l10n.contract, value: l10n.rollingMonthly),
            ],
          ),
        ],
      ),
    );
  }
}
