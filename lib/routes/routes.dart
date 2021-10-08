import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/presentation/home/movie/detail_movie_widget.dart';
import 'package:movie_app/presentation/home/movie/popular_movies_screen.dart';
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

      case PopularMoviesScreen.routeName:
        return MaterialPageRoute(builder: (_) => PopularMoviesScreen());

      case DetailScreen.routeName:
        var movieArgs = settings.arguments as MovieDetailArguments;
        return MaterialPageRoute(
          builder: (_) => DetailScreen(args: movieArgs),
        );
    }
  }
}