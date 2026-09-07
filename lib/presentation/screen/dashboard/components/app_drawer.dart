import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isp_selfcare/core/extensions/money_extension.dart';
import 'package:isp_selfcare/l10n/l10n.dart';
import 'package:isp_selfcare/presentation/locale/cubit/app_locale_cubit.dart';
import 'package:isp_selfcare/presentation/locale/cubit/app_locale_state.dart';
import 'package:isp_selfcare/presentation/route/app_router.gr.dart';
import 'package:isp_selfcare/presentation/screen/dashboard/cubit/connections_cubit.dart';
import 'package:isp_selfcare/presentation/theme/base/theme_extension.dart';
import 'package:isp_selfcare/presentation/widgets/industry/industry.dart';

/// The slide-over menu: who is signed in, the reward balance as a shortcut,
/// every screen that has no bottom tab, and the language switch.
class AppDrawer extends StatelessWidget {
  const AppDrawer({required this.rewardPoints, super.key});

  /// Null until the rewards call returns; the tile shows a dash meanwhile
  /// rather than a misleading zero.
  final int? rewardPoints;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final l10n = context.l10n;
    final state = context.watch<ConnectionsCubit>().state;

    return Drawer(
      width: MediaQuery.sizeOf(context).width * 0.8,
      backgroundColor: palette.bg,
      shape: const RoundedRectangleBorder(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _DrawerHeader(
            name: state.customer?.fullName ?? '',
            accountCode: state.selected?.code ?? state.customer?.code ?? '',
            connectionCount: state.connections.length,
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _RewardsTile(points: rewardPoints),
                  const SizedBox(height: 16),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border(top: BorderSide(color: palette.divider)),
                    ),
                    child: Column(
                      children: [
                        for (final link in _links(l10n))
                          _DrawerRow(
                            label: link.$1,
                            onTap: () {
                              Navigator.of(context).pop();
                              context.navigateTo(link.$2);
                            },
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const _LanguageFooter(),
        ],
      ),
    );
  }

  /// Ordered as the design lists them. "Privacy & terms" points at the account
  /// screen for now — there is no legal page in the prototype to point it at.
  List<(String, PageRouteInfo<dynamic>)> _links(AppLocalizations l10n) => [
    (l10n.accountDetails, const AccountRoute()),
    (l10n.titleUsage, const UsageRoute()),
    (l10n.titleSpeedtest, const SpeedTestRoute()),
    (l10n.autopay, const AutopayRoute()),
    (l10n.titleReferral, const ReferralRoute()),
    (l10n.titleRelocate, const RelocateRoute()),
    (l10n.titleOffers, const OffersRoute()),
    (l10n.titleSettings, const SettingsRoute()),
    (l10n.privacyTerms, const AccountRoute()),
  ];
}

class _DrawerHeader extends StatelessWidget {
  const _DrawerHeader({
    required this.name,
    required this.accountCode,
    required this.connectionCount,
  });

  final String name;
  final String accountCode;
  final int connectionCount;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final l10n = context.l10n;
    final ink = palette.onAccentSurface;

    return Container(
      color: palette.accentRamp[900],
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
      child: SafeArea(
        bottom: false,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    l10n.signedIn.toUpperCase(),
                    style: AppFonts.kicker(
                      size: 10.5,
                      color: palette.accentRamp[300],
                      trackingEm: 0.14,
                    ),
                  ),
                  Text(name, style: AppFonts.heading(size: 21, color: ink)),
                  Text(
                    'ID $accountCode · $connectionCount${l10n.connections}',
                    style: AppFonts.body(
                      size: 12,
                      color: palette.accentRamp[300],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 8),
            Semantics(
              button: true,
              label: MaterialLocalizations.of(context).closeButtonLabel,
              child: InkWell(
                onTap: () => Navigator.of(context).pop(),
                child: Container(
                  width: 36,
                  height: 36,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(color: ink.withValues(alpha: 0.3)),
                  ),
                  child: DsIcon(AppIcons.close, size: 20, color: ink),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _RewardsTile extends StatelessWidget {
  const _RewardsTile({required this.points});

  final int? points;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final l10n = context.l10n;

    return BlueprintBox(
      background: palette.accentRamp[100],
      borderColor: palette.accentRamp[200],
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            Navigator.of(context).pop();
            context.navigateTo(const RewardsRoute());
          },
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DsKicker(
                        l10n.pointsBalance,
                        color: palette.accentRamp[700],
                        trackingEm: 0.12,
                      ),
                      Text(
                        points?.toAmount() ?? '—',
                        style: AppFonts.heading(
                          size: 27,
                          color: palette.accentRamp[900],
                          height: 1,
                        ),
                      ),
                    ],
                  ),
                ),
                DsButton(
                  label: l10n.redeem,
                  variant: DsButtonVariant.secondary,
                  minHeight: 46,
                  onPressed: () {
                    Navigator.of(context).pop();
                    context.navigateTo(const RewardsRoute());
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// `.tl-row` — a full-width tappable row with a chevron.
class _DrawerRow extends StatelessWidget {
  const _DrawerRow({required this.label, required this.onTap});

  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Container(
          constraints: const BoxConstraints(minHeight: 50),
          padding: const EdgeInsets.symmetric(vertical: 13),
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: palette.divider)),
          ),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  label,
                  style: AppFonts.heading(size: 16, color: palette.text),
                ),
              ),
              DsIcon(
                AppIcons.chevronRight,
                size: 16,
                color: palette.neutralRamp[500],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// EN / BN, pinned to the bottom of the drawer as in the design.
class _LanguageFooter extends StatelessWidget {
  const _LanguageFooter();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    const locales = [Locale('en'), Locale('bn')];

    return BlocBuilder<AppLocaleCubit, AppLocaleState>(
      builder: (context, state) {
        final active = state.currentLocale ?? Localizations.localeOf(context);
        final selected = locales.indexWhere(
          (l) => l.languageCode == active.languageCode,
        );

        return SafeArea(
          top: false,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
            child: Row(
              children: [
                Expanded(child: DsKicker(l10n.language, trackingEm: 0.1)),
                SizedBox(
                  width: 120,
                  child: DsSegmented(
                    labels: const ['EN', 'BN'],
                    selectedIndex: selected < 0 ? 0 : selected,
                    minHeight: 34,
                    onSelected: (i) =>
                        context.read<AppLocaleCubit>().setLocale(locales[i]),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
