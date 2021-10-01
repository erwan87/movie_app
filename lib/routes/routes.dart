import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/presentation/login/loginscreen.dart';
import 'package:movie_app/presentation/login/splashscreen.dart';
import 'package:movie_app/presentation/main/mainscreen.dart';

class Routes {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case LoginScreen.routeName:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case MainScreen.routeName:
        return MaterialPageRoute(builder: (_) => MainScreen());
    }
  }
}