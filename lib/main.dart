import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:routes_flutter_web/router/guards/check_if_logged_in.dart';
import 'router/router.gr.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final router = AppRouter(
    checkIfLoggedIn: CheckIfLoggedIn(),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Routes Flutter Web',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerDelegate: AutoRouterDelegate(router),
      routeInformationParser: router.defaultRouteParser(),
    );
  }
}
