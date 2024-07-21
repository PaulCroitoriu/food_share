import 'package:auto_route/auto_route.dart';
import 'package:food_share/guards/auth_guard.dart';
import 'package:food_share/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: LoginRoute.page, initial: true),
        AutoRoute(page: RegisterRoute.page),
        AutoRoute(path: '/add-donation', page: AddDonationRoute.page, maintainState: false),
        AutoRoute(
          page: MainRoute.page,
          guards: [AuthGuard()],
          children: [
            AutoRoute(page: HomeRoute.page, maintainState: false),
            AutoRoute(page: DonationsRoute.page, maintainState: false),
            AutoRoute(page: NotificationsRoute.page, maintainState: false),
            AutoRoute(page: SettingsRoute.page, maintainState: false),
          ],
        ),
      ];
}
