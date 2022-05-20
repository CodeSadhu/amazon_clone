import 'package:amazon_clone/features/auth/screens/auth_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AuthScreen.routeName:
      return MaterialPageRoute(
        builder: (c) => const AuthScreen(),
        settings: routeSettings,
      );
    default:
      return MaterialPageRoute(
        builder: (c) => const Scaffold(
          body: Center(
            child: Text('No such route!'),
          ),
        ),
        settings: routeSettings,
      );
  }
}
