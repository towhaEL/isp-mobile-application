import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isp_selfcare/core/injector/injector.dart';
import 'package:isp_selfcare/l10n/l10n.dart';
import 'package:isp_selfcare/presentation/screen/dashboard/cubit/connections_cubit.dart';
import 'package:isp_selfcare/presentation/screen/speed_test/cubit/speed_test_cubit.dart';
import 'package:isp_selfcare/presentation/theme/base/theme_extension.dart';
import 'package:isp_selfcare/presentation/widgets/industry/industry.dart';

/// Measure the line and say whether it is delivering what was sold.
@RoutePage()
class SpeedTestScreen extends StatelessWidget {
  const SpeedTestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final connection = context.watch<ConnectionsCubit>().state.selected;
    if (connection == null) return const DsLoading(height: 320);

    return BlocProvider<SpeedTestCubit>(
      create: (_) => injector<SpeedTestCubit>(),
      child: _SpeedTestView(
        connectionId: connection.id,
        planMbps: connection.package?.downloadMbps.round() ?? 0,
      ),
    );
  }
}

class _SpeedTestView extends StatelessWidget {
  const _SpeedTestView({required this.connectionId, required this.planMbps});

  final int connectionId;
  final int planMbps;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final l10n = context.l10n;

    return BlocBuilder<SpeedTestCubit, SpeedTestState>(
      builder: (context, state) => ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _Gauge(state: state),
          const SizedBox(height: 18),
          _Metrics(state: state),
          const SizedBox(height: 18),
          if (state.isDone) ...[
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 11),
              decoration: BoxDecoration(
                color: palette.accentRamp[100],
                border: Border(
                  left: BorderSide(color: palette.accent, width: 3),
                ),
              ),
              child: Text(
                l10n.speedVerdict(
                  state.result!.percentOfPlan(planMbps),
                  planMbps,
                ),
                style: AppFonts.body(size: 13, color: palette.accentRamp[900]),
              ),
            ),
            const SizedBox(height: 16),
          ],
          DsButton(
            label: state.isRunning
                ? l10n.testing
                : state.isDone
                ? l10n.testAgain
                : l10n.startTest,
            variant: DsButtonVariant.primary,
            blueprint: true,
            block: true,
            minHeight: 54,
            fontSize: 15,
            onPressed: state.isRunning
                ? null
                : () => context.read<SpeedTestCubit>().run(
                    connectionId: connectionId,
                  ),
          ),
          const SizedBox(height: 10),
          Text(
            l10n.speedNote,
            style: AppFonts.body(size: 11.5, color: palette.neutralRamp[600]),
          ),
        ],
      ),
    );
  }
}

class _Gauge extends StatelessWidget {
  const _Gauge({required this.state});

  final SpeedTestState state;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final l10n = context.l10n;

    return BlueprintBox(
      borderColor: palette.accentRamp[300],
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: DsKicker(
              state.isDone
                  ? l10n.download
                  : state.isRunning
                  ? l10n.testingDownload
                  : l10n.ready,
              color: palette.accentRamp[700],
              trackingEm: 0.14,
            ),
          ),
          const SizedBox(height: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Flexible(
                child: Text(
                  state.headline,
                  style: AppFonts.heading(
                    size: 74,
                    color: palette.accentRamp[800],
                    height: 0.86,
                    letterSpacing: 74 * -0.02,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                  l10n.mbpsUnit,
                  style: AppFonts.heading(
                    size: 18,
                    color: palette.neutralRamp[700],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          // A bare 6px rule rather than a Material progress bar, to stay square.
          SizedBox(
            height: 6,
            child: Stack(
              children: [
                Positioned.fill(
                  child: ColoredBox(color: palette.accentRamp[200]),
                ),
                FractionallySizedBox(
                  widthFactor: state.progress.clamp(0.0, 1.0),
                  child: ColoredBox(color: palette.accent),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Center(
            child: Text(
              state.result?.serverLabel ?? '',
              style: AppFonts.body(size: 11.5, color: palette.neutralRamp[600]),
            ),
          ),
        ],
      ),
    );
  }
}

class _Metrics extends StatelessWidget {
  const _Metrics({required this.state});

  final SpeedTestState state;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final l10n = context.l10n;
    final result = state.result;

    final cells = <List<String>>[
      [
        l10n.upload,
        result == null ? '—' : result.uploadMbps.toStringAsFixed(1),
      ],
      [l10n.ping, result == null ? '—' : '${result.pingMs} ms'],
      [l10n.jitter, result == null ? '—' : '${result.jitterMs} ms'],
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
                            size: 24,
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
