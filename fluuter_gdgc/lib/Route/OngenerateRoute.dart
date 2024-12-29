import 'package:flutter/material.dart';
import '../Screen/SignUp.dart';
import '../Screen/FavoriteScreen.dart';
import '../Route/ErrorRoute.dart';
import 'Routes.dart';

class AppRoute {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.signup:
        return MaterialPageRoute(builder: (_) => const SignupScreen());
      case '/favorite':
        return MaterialPageRoute(builder: (_) => const Favoritescreen());
      
      default:
        return MaterialPageRoute(builder: (_) => const ErrorRoute());
    }
  }
}
