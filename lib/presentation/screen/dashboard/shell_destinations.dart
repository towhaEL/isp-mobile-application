import 'package:isp_selfcare/l10n/l10n.dart';
import 'package:isp_selfcare/presentation/route/app_router.gr.dart';
import 'package:isp_selfcare/presentation/widgets/industry/ds_icon.dart';

/// One of the five bottom-navigation tabs.
enum ShellTab {
  home(HomeRoute.name, AppIcons.home),
  bill(BillRoute.name, AppIcons.bill),
  packages(PackagesRoute.name, AppIcons.pkg),
  wifi(WifiRoute.name, AppIcons.wifi),
  support(SupportRoute.name, AppIcons.support);

  const ShellTab(this.routeName, this.iconPath);

  /// The route the tab navigates to.
  final String routeName;
  final String iconPath;

  String label(AppLocalizations l10n) => switch (this) {
    ShellTab.home => l10n.navHome,
    ShellTab.bill => l10n.navBill,
    ShellTab.packages => l10n.navPlans,
    ShellTab.wifi => l10n.navWifi,
    ShellTab.support => l10n.navSupport,
  };
}

/// Maps the route currently on screen to its masthead title and the tab that
/// should read as active.
///
/// The design is explicit that a screen and its tab are not the same thing:
/// paying a bill, setting up autopay and viewing a receipt all keep *Bill*
/// lit, because from the customer's point of view they are still doing the
/// billing task. Without this mapping every one of those screens would
/// un-highlight the whole bar and the shell would look broken.
abstract class ShellDestinations {
  const ShellDestinations._();

  static const Map<String, ShellTab> _tabForRoute = {
    HomeRoute.name: ShellTab.home,

    BillRoute.name: ShellTab.bill,
    PayRoute.name: ShellTab.bill,
    ReceiptRoute.name: ShellTab.bill,
    AutopayRoute.name: ShellTab.bill,

    PackagesRoute.name: ShellTab.packages,
    PlanChangeRoute.name: ShellTab.packages,
    PlanQueuedRoute.name: ShellTab.packages,

    WifiRoute.name: ShellTab.wifi,
    SpeedTestRoute.name: ShellTab.wifi,

    SupportRoute.name: ShellTab.support,
    NewTicketRoute.name: ShellTab.support,
    TicketThreadRoute.name: ShellTab.support,
  };

  /// The tab to highlight, or null for screens reached from the drawer that
  /// belong to no tab (settings, rewards, notifications …). The design leaves
  /// the bar unlit on those rather than guessing.
  static ShellTab? tabFor(String? routeName) => _tabForRoute[routeName];

  static String titleFor(String? routeName, AppLocalizations l10n) =>
      switch (routeName) {
        HomeRoute.name => l10n.titleHome,
        BillRoute.name => l10n.titleBill,
        PayRoute.name => l10n.titlePay,
        ReceiptRoute.name => l10n.titlePaid,
        // The design reuses the plain `autopay` / `notifications` strings as
        // their own screen titles rather than defining separate ones.
        AutopayRoute.name => l10n.autopay,
        PackagesRoute.name => l10n.titlePackages,
        PlanChangeRoute.name => l10n.titlePlanchange,
        PlanQueuedRoute.name => l10n.titlePlanchanged,
        UsageRoute.name => l10n.titleUsage,
        SpeedTestRoute.name => l10n.titleSpeedtest,
        WifiRoute.name => l10n.titleWifi,
        SupportRoute.name => l10n.titleSupport,
        NewTicketRoute.name => l10n.titleTicket,
        TicketThreadRoute.name => l10n.titleThread,
        RewardsRoute.name => l10n.titleRewards,
        ReferralRoute.name => l10n.titleReferral,
        RelocateRoute.name => l10n.titleRelocate,
        SettingsRoute.name => l10n.titleSettings,
        AccountRoute.name => l10n.titleAccount,
        NotificationsRoute.name => l10n.notifications,
        OffersRoute.name => l10n.titleOffers,
        _ => l10n.titleHome,
      };
}
