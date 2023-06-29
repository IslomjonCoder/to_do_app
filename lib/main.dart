import 'package:flutter/material.dart';
import 'package:to_do_app/ui/route/app_routes.dart';
import 'package:to_do_app/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: "Roboto",
          useMaterial3: false,
          scaffoldBackgroundColor: ColorsApp.mainBackground),
      debugShowCheckedModeBanner: false,
      initialRoute: RouteNames.initial,
      onGenerateRoute: AppRoutes.generateRoute,
    );
  }
}
