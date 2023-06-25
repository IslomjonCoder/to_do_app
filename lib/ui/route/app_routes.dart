import 'package:flutter/material.dart';

import '../home/home.dart';

class RouteNames {
  static const String initial = "/";
}

class AppRoutes {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.initial:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
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
