import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isp_selfcare/core/injector/injector.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';
import 'package:isp_selfcare/l10n/l10n.dart';
import 'package:isp_selfcare/presentation/screen/dashboard/cubit/connections_cubit.dart';
import 'package:isp_selfcare/presentation/screen/usage/cubit/usage_cubit.dart';
import 'package:isp_selfcare/presentation/theme/base/theme_extension.dart';
import 'package:isp_selfcare/presentation/widgets/industry/industry.dart';

/// Bandwidth history.
///
/// The plans are unmetered, so this chart is reference material rather than a
/// quota gauge — the note at the foot says so, because a bar chart on a bill
/// screen otherwise reads as "you are approaching a limit".
@RoutePage()
class UsageScreen extends StatelessWidget {
  const UsageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final connectionId = context.watch<ConnectionsCubit>().state.selected?.id;
    if (connectionId == null) return const DsLoading(height: 320);

    return BlocProvider<UsageCubit>(
      key: ValueKey(connectionId),
      create: (_) => injector<UsageCubit>()..load(connectionId: connectionId),
      child: _UsageView(connectionId: connectionId),
    );
  }
}

class _UsageView extends StatelessWidget {
  const _UsageView({required this.connectionId});

  final int connectionId;

  static const _ranges = [
    UsageRange.sevenDays,
    UsageRange.fifteenDays,
    UsageRange.thirtyDays,
  ];

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final l10n = context.l10n;

    return BlocBuilder<UsageCubit, UsageState>(
      builder: (context, state) {
        final summary = state.summary;

        return ListView(
          padding: const EdgeInsets.all(16),
          children: [
            DsSegmented(
              labels: ['7${l10n.days}', '15${l10n.days}', '30${l10n.days}'],
              selectedIndex: _ranges.indexOf(state.range),
              onSelected: (i) => context.read<UsageCubit>().selectRange(
                connectionId,
                _ranges[i],
              ),
            ),
            const SizedBox(height: 18),
            if (summary == null)
              const DsLoading()
            else ...[
              _Totals(summary: summary),
              const SizedBox(height: 20),
              _UsageChart(state: state),
              const SizedBox(height: 16),
              Text(
                l10n.unmeteredNote,
                style: AppFonts.body(
                  size: 12.5,
                  color: palette.neutralRamp[700],
                ),
              ),
            ],
          ],
        );
      },
    );
  }
}

class _Totals extends StatelessWidget {
  const _Totals({required this.summary});

  final UsageSummaryEntity summary;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final l10n = context.l10n;

    final cells = <List<String>>[
      [l10n.download, '${summary.downloadGb.round()} GB'],
      [l10n.upload, '${summary.uploadGb.round()} GB'],
      [l10n.total, '${summary.totalGb.round()} GB'],
    ];

    return Container(
      color: palette.accentRamp[200],
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            for (var i = 0; i < cells.length; i++) ...[
              if (i > 0) const SizedBox(width: 1),
              Expanded(
                child: Container(
                  color: palette.accentRamp[100],
                  padding: const EdgeInsets.all(11),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          cells[i][1],
                          style: AppFonts.heading(
                            size: 27,
                            color: palette.accentRamp[900],
                            height: 1,
                          ),
                        ),
                      ),
                      Text(
                        cells[i][0].toUpperCase(),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: AppFonts.kicker(
                          size: 10.5,
                          color: palette.accentRamp[700],
                          trackingEm: 0.08,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

/// Stacked bars: download below, upload above, both scaled against the tallest
/// column so the shape of the week is legible without an axis.
class _UsageChart extends StatelessWidget {
  const _UsageChart({required this.state});

  final UsageState state;

  /// The design caps the tallest bar at 82% of the plot height, leaving
  /// headroom so the peak never touches the frame.
  static const _plotHeight = 158.0;
  static const _peakFraction = 0.82;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final l10n = context.l10n;
    final buckets = state.buckets;

    return BlueprintBox(
      borderColor: palette.accentRamp[300],
      padding: const EdgeInsets.fromLTRB(12, 14, 12, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: _plotHeight,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: palette.accentRamp[300]),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                for (var i = 0; i < buckets.length; i++) ...[
                  if (i > 0) const SizedBox(width: 6),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: _height(buckets[i].downloadGb),
                          color: palette.accentRamp[800],
                        ),
                        const SizedBox(height: 2),
                        Container(
                          height: _height(buckets[i].uploadGb),
                          color: palette.accentRamp[400],
                        ),
                      ],
                    ),
                  ),
                ],
              ],
            ),
          ),
          const SizedBox(height: 6),
          Row(
            children: [
              for (var i = 0; i < buckets.length; i++) ...[
                if (i > 0) const SizedBox(width: 6),
                Expanded(
                  child: Text(
                    buckets[i].label.toUpperCase(),
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppFonts.body(
                      size: 9.5,
                      color: palette.neutralRamp[600],
                      letterSpacing: 9.5 * 0.04,
                    ),
                  ),
                ),
              ],
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              _LegendSwatch(
                color: palette.accentRamp[800],
                label: l10n.download,
              ),
              const SizedBox(width: 16),
              _LegendSwatch(color: palette.accentRamp[400], label: l10n.upload),
            ],
          ),
        ],
      ),
    );
  }

  double _height(double gb) => (gb / state.peak) * _plotHeight * _peakFraction;
}

class _LegendSwatch extends StatelessWidget {
  const _LegendSwatch({required this.color, required this.label});

  final Color color;
  final String label;

  @override
  Widget build(BuildContext context) => Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Container(width: 10, height: 10, color: color),
      const SizedBox(width: 6),
      Text(
        label,
        style: AppFonts.body(
          size: 11.5,
          color: context.palette.neutralRamp[700],
        ),
      ),
    ],
  );
}
