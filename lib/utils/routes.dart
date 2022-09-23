import 'package:flutter/material.dart';
import 'package:navigation_routing_practice/home_screen.dart';
import 'package:navigation_routing_practice/screen_three.dart';
import 'package:navigation_routing_practice/screen_two.dart';
import 'package:navigation_routing_practice/utils/routes_name.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.homeScreen:
        return MaterialPageRoute(builder: ((context) => const Homescreen()));
      case RoutesName.screenTwo:
        return MaterialPageRoute(
            builder: ((context) => ScreenTwo(
                  data: settings.arguments as Map,
                )));
      case RoutesName.screenThree:
        return MaterialPageRoute(
            builder: ((context) => ScreenThree(
                  data: settings.arguments as Map,
                )));
      default:
        return MaterialPageRoute(builder: (context) {
          return const Scaffold(
            body: Center(
              child: Text("No Route Defined"),
            ),
          );
        });
    }
  }
}
