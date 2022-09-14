import 'package:check_internet_connection/config/utils/app_strings.dart';
import 'package:check_internet_connection/features/internet_connection/presentation/screen/details.dart';
import 'package:check_internet_connection/features/internet_connection/presentation/screen/home.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String initialRout = '/';
  static const String detailsScreen = 'detailsScreen';
}

class AppRoutes {
  static Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.initialRout:
        return MaterialPageRoute(builder: ((context) => const MyHomePage()));

      case Routes.detailsScreen:
        return MaterialPageRoute(builder: ((context) => const DetailsScreen()));
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: ((context) => const Scaffold(
              body: Center(
                child: Text(AppStrings.noRouteFound),
              ),
            )));
  }
}
