import 'package:auto_route/auto_route.dart';
import 'package:isp_selfcare/presentation/route/app_router.gr.dart';

/// The app is one persistent shell with many screens inside it.
///
/// The design keeps its masthead, bottom navigation and drawer on screen at all
/// times — "Pay bill" is not a modal, it is another page under the same chrome,
/// and its bottom tab still highlights *Bill*. Nesting every screen under
/// [DashboardRoute] is what reproduces that, and it means the selected
/// connection and the shell's state survive navigation for free.
@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: SplashRoute.page, initial: true),
    AutoRoute(page: LogInRoute.page),
    AutoRoute(page: WebViewRoute.page),
    AutoRoute(
      page: DashboardRoute.page,
      children: [
        AutoRoute(page: HomeRoute.page, initial: true),

        // Billing
        AutoRoute(page: BillRoute.page),
        AutoRoute(page: PayRoute.page),
        AutoRoute(page: ReceiptRoute.page),
        AutoRoute(page: AutopayRoute.page),

        // Plans
        AutoRoute(page: PackagesRoute.page),
        AutoRoute(page: PlanChangeRoute.page),
        AutoRoute(page: PlanQueuedRoute.page),

        // Network
        AutoRoute(page: WifiRoute.page),
        AutoRoute(page: SpeedTestRoute.page),
        AutoRoute(page: UsageRoute.page),

        // Support
        AutoRoute(page: SupportRoute.page),
        AutoRoute(page: NewTicketRoute.page),
        AutoRoute(page: TicketThreadRoute.page),

        // Account and extras
        AutoRoute(page: RewardsRoute.page),
        AutoRoute(page: ReferralRoute.page),
        AutoRoute(page: RelocateRoute.page),
        AutoRoute(page: SettingsRoute.page),
        AutoRoute(page: AccountRoute.page),
        AutoRoute(page: NotificationsRoute.page),
        AutoRoute(page: OffersRoute.page),
      ],
    ),
  ];
}
