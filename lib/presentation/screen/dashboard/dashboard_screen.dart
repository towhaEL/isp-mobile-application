import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isp_selfcare/core/injector/injector.dart';
import 'package:isp_selfcare/l10n/l10n.dart';
import 'package:isp_selfcare/presentation/route/app_router.gr.dart';
import 'package:isp_selfcare/presentation/screen/dashboard/components/app_drawer.dart';
import 'package:isp_selfcare/presentation/screen/dashboard/components/shell_chrome.dart';
import 'package:isp_selfcare/presentation/screen/dashboard/cubit/connections_cubit.dart';
import 'package:isp_selfcare/presentation/screen/dashboard/cubit/internet_cubit.dart';
import 'package:isp_selfcare/presentation/screen/dashboard/shell_destinations.dart';
import 'package:isp_selfcare/presentation/screen/notifications/cubit/notifications_cubit.dart';
import 'package:isp_selfcare/presentation/screen/rewards/cubit/rewards_cubit.dart';
import 'package:isp_selfcare/presentation/theme/base/theme_extension.dart';

/// The signed-in shell.
///
/// Everything the customer sees after sign-in lives inside this one page: the
/// masthead, the offline strip, a nested router for the current screen, the
/// bottom tabs and the drawer. Keeping it a single [Scaffold] is what lets the
/// chrome stay put while the body changes, and what makes the selected
/// connection outlive navigation.
@RoutePage()
class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // Registered as singletons, so these resolve to the same instances the
        // individual screens inject — the shell just makes them visible to the
        // subtree and owns the initial load.
        BlocProvider<ConnectionsCubit>(
          create: (_) => injector<ConnectionsCubit>()..load(),
        ),
        BlocProvider<RewardsCubit>(
          create: (_) => injector<RewardsCubit>()..load(),
        ),
        BlocProvider<NotificationsCubit>(
          create: (_) => injector<NotificationsCubit>()..load(),
        ),
        BlocProvider<InternetCubit>(create: (_) => injector<InternetCubit>()),
      ],
      child: const _DashboardShell(),
    );
  }
}

class _DashboardShell extends StatelessWidget {
  const _DashboardShell();

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;

    return AutoRouter(
      builder: (context, child) {
        final routeName = context.topRouteMatch.name;
        final l10n = context.l10n;

        return Scaffold(
          backgroundColor: palette.bg,
          drawerScrimColor: palette.accentRamp[900].withValues(alpha: 0.55),
          drawer: BlocBuilder<RewardsCubit, RewardsState>(
            builder: (context, rewards) =>
                AppDrawer(rewardPoints: rewards.points),
          ),
          body: Builder(
            builder: (scaffoldContext) => Column(
              children: [
                SafeArea(
                  bottom: false,
                  child: BlocBuilder<NotificationsCubit, NotificationsState>(
                    buildWhen: (a, b) => a.unreadCount != b.unreadCount,
                    builder: (context, notifications) => ShellTopBar(
                      title: ShellDestinations.titleFor(routeName, l10n),
                      hasUnread: notifications.unreadCount > 0,
                      onMenu: () => Scaffold.of(scaffoldContext).openDrawer(),
                      onNotifications: () =>
                          context.navigateTo(const NotificationsRoute()),
                    ),
                  ),
                ),
                BlocBuilder<InternetCubit, InternetState>(
                  builder: (context, internet) => internet.isConnected
                      ? const SizedBox.shrink()
                      : const OfflineBanner(),
                ),
                Expanded(child: child),
                ShellBottomNav(activeTab: ShellDestinations.tabFor(routeName)),
              ],
            ),
          ),
        );
      },
    );
  }
}
