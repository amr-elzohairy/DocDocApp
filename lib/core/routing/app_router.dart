import 'package:docdoc/core/routing/routes.dart';
import 'package:docdoc/features/login/ui/login_screen.dart';
import 'package:docdoc/features/on_boarding/on_boarding.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generatedRote(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnBoarding());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No Rotes defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
