import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isp_selfcare/core/injector/injector.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';
import 'package:isp_selfcare/l10n/l10n.dart';
import 'package:isp_selfcare/presentation/screen/referral/cubit/referral_cubit.dart';
import 'package:isp_selfcare/presentation/theme/base/theme_extension.dart';
import 'package:isp_selfcare/presentation/widgets/industry/industry.dart';

/// Share a code, watch the invitees convert.
@RoutePage()
class ReferralScreen extends StatelessWidget {
  const ReferralScreen({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider<ReferralCubit>(
    create: (_) => injector<ReferralCubit>()..load(),
    child: const _ReferralView(),
  );
}

class _ReferralView extends StatelessWidget {
  const _ReferralView();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return BlocBuilder<ReferralCubit, ReferralState>(
      builder: (context, state) {
        final referral = state.referral;
        if (referral == null) return const DsLoading(height: 320);

        return ListView(
          padding: const EdgeInsets.all(16),
          children: [
            _CodeCard(referral: referral, hasCopied: state.hasCopied),
            const SizedBox(height: 18),
            _Stats(referral: referral),
            const SizedBox(height: 18),
            DsKicker(l10n.invites),
            const SizedBox(height: 8),
            if (state.hasInvites)
              _InviteList(invites: state.invites)
            else
              DsEmptyState(
                iconPath: AppIcons.peopleAdd,
                title: l10n.noInvitesTitle,
                body: l10n.noInvitesBody,
              ),
          ],
        );
      },
    );
  }
}

class _CodeCard extends StatelessWidget {
  const _CodeCard({required this.referral, required this.hasCopied});

  final ReferralEntity referral;
  final bool hasCopied;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final l10n = context.l10n;

    return BlueprintBox(
      borderColor: palette.accentRamp[300],
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DsKicker(
            l10n.yourCode,
            color: palette.accentRamp[700],
            trackingEm: 0.12,
          ),
          const SizedBox(height: 4),
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              referral.code,
              style: AppFonts.heading(
                size: 38,
                color: palette.accentRamp[900],
                height: 1,
                letterSpacing: 38 * 0.04,
              ),
            ),
          ),
          const SizedBox(height: 12),
          Text(
            l10n.referralBlurb,
            style: AppFonts.body(size: 13, color: palette.neutralRamp[700]),
          ),
          const SizedBox(height: 14),
          Row(
            children: [
              Expanded(
                child: DsButton(
                  label: hasCopied ? l10n.codeCopied : l10n.copyCode,
                  variant: DsButtonVariant.primary,
                  blueprint: true,
                  minHeight: 48,
                  onPressed: () => _copy(context, referral.code),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: DsButton(
                  label: l10n.share,
                  variant: DsButtonVariant.secondary,
                  minHeight: 48,
                  onPressed: () => showDsToast(context, l10n.share),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future<void> _copy(BuildContext context, String code) async {
    await Clipboard.setData(ClipboardData(text: code));
    if (!context.mounted) return;
    context.read<ReferralCubit>().markCopied();
    showDsToast(context, context.l10n.codeCopiedToClipboard(code));
  }
}

class _Stats extends StatelessWidget {
  const _Stats({required this.referral});

  final ReferralEntity referral;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final l10n = context.l10n;

    final cells = <List<String>>[
      [l10n.invitesUsed, '${referral.invitesUsed}'],
      [l10n.pointsEarned, '${referral.pointsEarned}'],
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
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 11,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        cells[i][1],
                        style: AppFonts.heading(
                          size: 26,
                          color: palette.accentRamp[900],
                          height: 1,
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

class _InviteList extends StatelessWidget {
  const _InviteList({required this.invites});

  final List<ReferralInviteEntity> invites;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final l10n = context.l10n;

    String label(ReferralInviteStatus status) => switch (status) {
      ReferralInviteStatus.paidOut => l10n.paidOut,
      ReferralInviteStatus.inProgress => l10n.inProgress,
      ReferralInviteStatus.expired => l10n.expired,
    };

    return Container(
      color: palette.accentRamp[200],
      child: Column(
        children: [
          for (var i = 0; i < invites.length; i++) ...[
            if (i > 0) const SizedBox(height: 1),
            Container(
              color: palette.bg,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 11),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          invites[i].name,
                          style: AppFonts.heading(
                            size: 15,
                            color: palette.text,
                          ),
                        ),
                        Text(
                          invites[i].progressLabel,
                          style: AppFonts.body(
                            size: 11.5,
                            color: palette.neutralRamp[600],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),
                  DsTag(
                    label: label(invites[i].status),
                    fontSize: 10,
                    background:
                        invites[i].status == ReferralInviteStatus.expired
                        ? palette.neutralRamp[300]
                        : palette.accentRamp[200],
                    foreground:
                        invites[i].status == ReferralInviteStatus.expired
                        ? palette.neutralRamp[900]
                        : palette.accentRamp[900],
                  ),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }
}
