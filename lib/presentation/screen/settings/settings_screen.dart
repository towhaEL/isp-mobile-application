import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';
import 'package:isp_selfcare/l10n/l10n.dart';
import 'package:isp_selfcare/presentation/locale/cubit/app_locale_cubit.dart';
import 'package:isp_selfcare/presentation/locale/cubit/app_locale_state.dart';
import 'package:isp_selfcare/presentation/route/app_router.gr.dart';
import 'package:isp_selfcare/presentation/screen/account/account_screen.dart';
import 'package:isp_selfcare/presentation/screen/notifications/cubit/notifications_cubit.dart';
import 'package:isp_selfcare/presentation/theme/base/theme_extension.dart';
import 'package:isp_selfcare/presentation/widgets/industry/industry.dart';

/// Language, what the app is allowed to notify about, and the way out.
@RoutePage()
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final l10n = context.l10n;

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        DsKicker(l10n.language),
        const SizedBox(height: 8),
        const _LanguageSegment(),
        const SizedBox(height: 22),
        DsKicker(l10n.notifications),
        const SizedBox(height: 8),
        const _PreferenceList(),
        const SizedBox(height: 22),
        DsButton(
          label: l10n.accountDetails,
          variant: DsButtonVariant.secondary,
          block: true,
          minHeight: 48,
          onPressed: () => context.navigateTo(const AccountRoute()),
        ),
        const SizedBox(height: 8),
        DsButton(
          label: l10n.requestMove,
          variant: DsButtonVariant.secondary,
          block: true,
          minHeight: 48,
          onPressed: () => context.navigateTo(const RelocateRoute()),
        ),
        const SizedBox(height: 8),
        DsButton(
          label: l10n.signOut,
          variant: DsButtonVariant.ghost,
          block: true,
          minHeight: 48,
          foreground: palette.accentRamp[800],
          onPressed: () => signOut(context),
        ),
      ],
    );
  }
}

class _LanguageSegment extends StatelessWidget {
  const _LanguageSegment();

  @override
  Widget build(BuildContext context) {
    const locales = [Locale('en'), Locale('bn')];

    return BlocBuilder<AppLocaleCubit, AppLocaleState>(
      builder: (context, state) {
        final active = state.currentLocale ?? Localizations.localeOf(context);
        final selected = locales.indexWhere(
          (l) => l.languageCode == active.languageCode,
        );
        return DsSegmented(
          labels: const ['EN', 'BN'],
          selectedIndex: selected < 0 ? 0 : selected,
          onSelected: (i) =>
              context.read<AppLocaleCubit>().setLocale(locales[i]),
        );
      },
    );
  }
}

class _PreferenceList extends StatelessWidget {
  const _PreferenceList();

  /// Ordered as the design lists them, which is roughly by how much the
  /// customer would miss the message if it stopped arriving.
  static const _order = [
    NotificationCategory.bill,
    NotificationCategory.payment,
    NotificationCategory.outage,
    NotificationCategory.ticket,
    NotificationCategory.offer,
  ];

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final l10n = context.l10n;

    (String, String) copyFor(NotificationCategory category) =>
        switch (category) {
          NotificationCategory.bill => (
            l10n.billReminders,
            l10n.n3DaysBeforeTheDue,
          ),
          NotificationCategory.payment => (
            l10n.paymentReceipts,
            l10n.pushAndSms,
          ),
          NotificationCategory.outage => (
            l10n.outageMaintenance,
            l10n.onlyForYourArea,
          ),
          NotificationCategory.ticket => (
            l10n.ticketReplies,
            l10n.whenAnEngineerResponds,
          ),
          NotificationCategory.offer => (
            l10n.offersCampaigns,
            l10n.atMostTwiceAMonth,
          ),
        };

    return BlocBuilder<NotificationsCubit, NotificationsState>(
      builder: (context, state) => Container(
        color: palette.accentRamp[200],
        child: Column(
          children: [
            for (var i = 0; i < _order.length; i++) ...[
              if (i > 0) const SizedBox(height: 1),
              Builder(
                builder: (context) {
                  final (label, note) = copyFor(_order[i]);
                  return Container(
                    color: palette.bg,
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                label,
                                style: AppFonts.heading(
                                  size: 15,
                                  color: palette.text,
                                ),
                              ),
                              Text(
                                note,
                                style: AppFonts.body(
                                  size: 12,
                                  color: palette.neutralRamp[600],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 12),
                        DsSwitch(
                          value: state.isEnabled(_order[i]),
                          semanticLabel: label,
                          onChanged: (value) => context
                              .read<NotificationsCubit>()
                              .setPreference(_order[i], enabled: value),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ],
        ),
      ),
    );
  }
}
