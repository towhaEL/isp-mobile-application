import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isp_selfcare/core/extensions/money_extension.dart';
import 'package:isp_selfcare/core/injector/injector.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';
import 'package:isp_selfcare/l10n/l10n.dart';
import 'package:isp_selfcare/presentation/route/app_router.gr.dart';
import 'package:isp_selfcare/presentation/screen/autopay/cubit/autopay_cubit.dart';
import 'package:isp_selfcare/presentation/screen/dashboard/cubit/connections_cubit.dart';
import 'package:isp_selfcare/presentation/theme/base/theme_extension.dart';
import 'package:isp_selfcare/presentation/widgets/industry/industry.dart';
import 'package:isp_selfcare/presentation/widgets/util/date_format.dart';

/// Set up a standing instruction so the bill pays itself.
@RoutePage()
class AutopayScreen extends StatelessWidget {
  const AutopayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final connections = context.watch<ConnectionsCubit>().state.connections;

    return BlocProvider<AutopayCubit>(
      create: (_) =>
          injector<AutopayCubit>()
            ..load(defaultConnectionIds: connections.map((c) => c.id).toList()),
      child: const _AutopayView(),
    );
  }
}

class _AutopayView extends StatelessWidget {
  const _AutopayView();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AutopayCubit, AutopayState>(
      builder: (context, state) {
        if (state.status.isLoading || state.status.initial) {
          return const DsLoading(height: 320);
        }

        return Padding(
          padding: const EdgeInsets.all(16),
          child: state.isSaved
              ? _SavedPanel(state: state)
              : _AutopayForm(state: state),
        );
      },
    );
  }
}

class _SavedPanel extends StatelessWidget {
  const _SavedPanel({required this.state});

  final AutopayState state;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final l10n = context.l10n;

    return BlueprintBox(
      borderColor: palette.accentRamp[300],
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 22),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          DsIcon(AppIcons.check, size: 42, color: palette.accent),
          const SizedBox(height: 10),
          Text(
            l10n.autopaySavedTitle,
            textAlign: TextAlign.center,
            style: AppFonts.heading(size: 24, color: palette.text),
          ),
          const SizedBox(height: 6),
          Text(
            _summary(context, state),
            textAlign: TextAlign.center,
            style: AppFonts.body(size: 13, color: palette.neutralRamp[700]),
          ),
          const SizedBox(height: 16),
          DsButton(
            label: l10n.backToBill,
            variant: DsButtonVariant.primary,
            blueprint: true,
            minHeight: 48,
            onPressed: () => context.navigateTo(const BillRoute()),
          ),
        ],
      ),
    );
  }
}

/// "Autopay charges bKash — 3 days before due".
String _summary(BuildContext context, AutopayState state) {
  final l10n = context.l10n;
  final config = state.draft;
  final source = config?.source?.name ?? '';
  return '${l10n.autopayCharges}$source — '
      '${_timingLabel(context, config?.timing).toLowerCase()}';
}

String _timingLabel(BuildContext context, AutopayTiming? timing) {
  final l10n = context.l10n;
  return switch (timing ?? AutopayTiming.threeDaysBeforeDue) {
    AutopayTiming.threeDaysBeforeDue => l10n.n3DaysBeforeDue,
    AutopayTiming.onDueDate => l10n.onTheDueDate,
    AutopayTiming.firstOfMonth => l10n.n1stOfTheMonth,
  };
}

class _AutopayForm extends StatelessWidget {
  const _AutopayForm({required this.state});

  final AutopayState state;

  static const _timings = [
    AutopayTiming.threeDaysBeforeDue,
    AutopayTiming.onDueDate,
    AutopayTiming.firstOfMonth,
  ];

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final l10n = context.l10n;
    final cubit = context.read<AutopayCubit>();
    final connections = context.watch<ConnectionsCubit>().state;

    return ListView(
      padding: EdgeInsets.zero,
      children: [
        BlueprintBox(
          borderColor: palette.accentRamp[300],
          padding: const EdgeInsets.all(14),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      l10n.autopay,
                      style: AppFonts.heading(size: 18, color: palette.text),
                    ),
                    Text(
                      l10n.autopayBlurb,
                      style: AppFonts.body(
                        size: 12.5,
                        color: palette.neutralRamp[700],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 12),
              DsSwitch(
                value: state.isEnabled,
                semanticLabel: l10n.autopay,
                onChanged: (_) => cubit.toggleEnabled(),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        if (!state.isEnabled)
          DsEmptyState(
            iconPath: AppIcons.autopay,
            title: l10n.autopayOffTitle,
            body: l10n.autopayOffBody,
          )
        else ...[
          DsKicker(l10n.chargeFrom),
          const SizedBox(height: 8),
          for (var i = 0; i < state.methods.length; i++) ...[
            if (i > 0) const SizedBox(height: 8),
            DsOptionRow(
              label: state.methods[i].name,
              labelIsHeading: true,
              selected: state.draft?.source?.id == state.methods[i].id,
              onTap: () => cubit.selectSource(state.methods[i]),
              trailing: Text(
                state.methods[i].maskedAccount ?? '',
                style: AppFonts.body(size: 12, color: palette.neutralRamp[600]),
              ),
            ),
          ],
          const SizedBox(height: 20),
          DsKicker(l10n.chargeWhen),
          const SizedBox(height: 8),
          for (var i = 0; i < _timings.length; i++) ...[
            if (i > 0) const SizedBox(height: 8),
            DsOptionRow(
              label: _timingLabel(context, _timings[i]),
              selected: state.draft?.timing == _timings[i],
              onTap: () => cubit.selectTiming(_timings[i]),
            ),
          ],
          const SizedBox(height: 20),
          DsKicker(l10n.whichLines),
          const SizedBox(height: 8),
          _LineToggles(state: state, connections: connections),
          const SizedBox(height: 20),
          DsButton(
            label: l10n.saveAutopay,
            variant: DsButtonVariant.primary,
            blueprint: true,
            block: true,
            minHeight: 52,
            fontSize: 15,
            onPressed: state.canSave ? cubit.save : null,
          ),
        ],
      ],
    );
  }
}

class _LineToggles extends StatelessWidget {
  const _LineToggles({required this.state, required this.connections});

  final AutopayState state;
  final ConnectionsState connections;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final cubit = context.read<AutopayCubit>();

    return Container(
      color: palette.accentRamp[200],
      child: Column(
        children: [
          for (var i = 0; i < connections.connections.length; i++) ...[
            if (i > 0) const SizedBox(height: 1),
            Builder(
              builder: (context) {
                final connection = connections.connections[i];
                final invoice = connections.nextPayableFor(connection.id);
                return Container(
                  color: palette.bg,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 11,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              connection.displayName,
                              style: AppFonts.heading(
                                size: 15,
                                color: palette.text,
                              ),
                            ),
                            Text(
                              '${connections.dueFor(connection.id).toMoney(context)}'
                              '${invoice == null ? '' : ' · ${formatDayMonth(invoice.dueDate)}'}',
                              style: AppFonts.body(
                                size: 11.5,
                                color: palette.neutralRamp[600],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 12),
                      DsSwitch(
                        value: state.isConnectionSelected(connection.id),
                        semanticLabel: connection.displayName,
                        onChanged: (_) => cubit.toggleConnection(connection.id),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ],
      ),
    );
  }
}
