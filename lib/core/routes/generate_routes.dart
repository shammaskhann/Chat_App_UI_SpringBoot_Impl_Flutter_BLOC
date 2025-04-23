import 'package:flutter/material.dart';
import 'package:springboot_test_bench/presentation/screens/auth/login/login_screen.dart';
import 'package:springboot_test_bench/presentation/screens/splash/splash_screen.dart';

class GenerateRoutes {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case '/login':
        return MaterialPageRoute(builder: (_) => const LoginScreen());

      default:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
    }
  }
}
