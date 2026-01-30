import 'package:auto_route/auto_route.dart';
import 'package:flutter_quran/routing/route.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.cupertino();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(
          page: HomeRoute.page,
          children: [
            AutoRoute(page: HomeTabRoute.page),
            AutoRoute(page: QuranRoute.page),
            AutoRoute(page: MapRoute.page),
            AutoRoute(page: QiblaRoute.page),
            AutoRoute(page: CalendarRoute.page),
          ],
        ),
        AutoRoute(page: HomeTabRoute.page),
        AutoRoute(page: QiblaRoute.page),
        AutoRoute(page: CalendarRoute.page),
        AutoRoute(page: MapRoute.page),
        AutoRoute(page: SurahDetailRoute.page),
        AutoRoute(page: PrayerTimeRoute.page),
      ];
  @override
  List<AutoRouteGuard> get guards => [];
}
