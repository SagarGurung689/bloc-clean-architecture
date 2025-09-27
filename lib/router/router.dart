part of 'router_imports.dart';

@AutoRouterConfig(replaceInRouteName: 'Router')

class AppRouter extends RootStackRouter{
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: HomeScreenRoute.page, initial: true),
    AutoRoute(page: ProductDetailsPageRoute.page),
  ];
}