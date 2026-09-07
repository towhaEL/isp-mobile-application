import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isp_selfcare/core/extensions/money_extension.dart';
import 'package:isp_selfcare/l10n/l10n.dart';
import 'package:isp_selfcare/presentation/screen/rewards/cubit/rewards_cubit.dart';
import 'package:isp_selfcare/presentation/theme/base/theme_extension.dart';
import 'package:isp_selfcare/presentation/widgets/industry/industry.dart';
import 'package:isp_selfcare/presentation/widgets/util/date_format.dart';

/// The points balance, what it buys, and where it came from.
@RoutePage()
class RewardsScreen extends StatelessWidget {
  const RewardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return BlocBuilder<RewardsCubit, RewardsState>(
      builder: (context, state) {
        if (state.rewards == null) return const DsLoading(height: 320);

        return ListView(
          padding: EdgeInsets.zero,
          children: [
            _PointsHeader(state: state),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  DsKicker(l10n.redeem),
                  const SizedBox(height: 8),
                  _RedeemOptions(state: state),
                  const SizedBox(height: 20),
                  DsButton(
                    label: state.selectedOption == null
                        ? l10n.chooseAReward
                        : '${l10n.redeem2}'
                              '${state.selectedOption!.cost.toAmount()}'
                              '${l10n.points}',
                    variant: DsButtonVariant.primary,
                    blueprint: true,
                    block: true,
                    minHeight: 52,
                    fontSize: 15,
                    onPressed: state.canRedeem ? () => _redeem(context) : null,
                  ),
                  const SizedBox(height: 22),
                  DsKicker(l10n.ledger),
                  const SizedBox(height: 6),
                  _Ledger(state: state),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  Future<void> _redeem(BuildContext context) async {
    final title = await context.read<RewardsCubit>().redeemSelected();
    if (!context.mounted || title == null) return;
    showDsToast(context, '$title${context.l10n.appliedToYourNextBill}');
  }
}

class _PointsHeader extends StatelessWidget {
  const _PointsHeader({required this.state});

  final RewardsState state;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final l10n = context.l10n;
    final rewards = state.rewards!;
    final ink = palette.onAccentSurface;

    return Container(
      width: double.infinity,
      color: palette.accentRamp[900],
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DsKicker(l10n.pointsBalance, color: palette.accentRamp[300]),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Flexible(
                child: Text(
                  rewards.points.toAmount(),
                  style: AppFonts.heading(size: 56, color: ink, height: 0.9),
                ),
              ),
              const SizedBox(width: 10),
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  '= ${rewards.monetaryValue.round().toMoney(context)}',
                  style: AppFonts.body(
                    size: 13,
                    color: palette.accentRamp[300],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          Text(
            l10n.pointsRate,
            style: AppFonts.body(size: 12, color: palette.accentRamp[300]),
          ),
        ],
      ),
    );
  }
}

class _RedeemOptions extends StatelessWidget {
  const _RedeemOptions({required this.state});

  final RewardsState state;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final l10n = context.l10n;

    return Column(
      children: [
        for (var i = 0; i < state.options.length; i++) ...[
          if (i > 0) const SizedBox(height: 8),
          Builder(
            builder: (context) {
              final option = state.options[i];
              final affordable = state.canAfford(option);
              return Opacity(
                // Unaffordable rewards stay visible — they are the reason to
                // keep earning — but read as out of reach.
                opacity: affordable ? 1 : 0.55,
                child: DsOptionRow(
                  label: option.title,
                  labelIsHeading: true,
                  minHeight: 60,
                  selected: state.selectedOptionId == option.id,
                  subtitle: affordable
                      ? l10n.appliesToYourNextBill
                      : l10n.notEnoughPointsYet,
                  onTap: affordable
                      ? () => context.read<RewardsCubit>().select(option.id)
                      : null,
                  trailing: Text(
                    option.cost.toAmount(),
                    style: AppFonts.heading(
                      size: 18,
                      color: palette.accentRamp[800],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ],
    );
  }
}

class _Ledger extends StatelessWidget {
  const _Ledger({required this.state});

  final RewardsState state;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;

    return DsKeyValueTable(
      rows: [
        for (final entry in state.ledger)
          DsKeyValueRow(
            label: entry.description,
            sublabel: formatDayMonthYear(entry.occurredAt),
            value:
                '${entry.isCredit ? '+' : '−'}'
                '${entry.delta.abs().toAmount()}',
            emphasised: true,
            labelColor: palette.text,
            valueColor: entry.isCredit
                ? palette.accentRamp[800]
                : palette.neutralRamp[700],
          ),
      ],
    );
  }
}
