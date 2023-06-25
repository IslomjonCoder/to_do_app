import 'package:flutter/material.dart';

import '../bottom_nav_bar/navigationbar_screen.dart';

class RouteNames {
  static const String initial = "/";
}

class AppRoutes {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.initial:
        return MaterialPageRoute(builder: (context) =>  const NavBar());
      default:
        return MaterialPageRoute(
            builder: (context) => const Scaffold(
                    body: Center(
                        child: Text("Route not found"),
                )
            )
        );
    }
  }
}
