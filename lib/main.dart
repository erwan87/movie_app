import 'package:flutter/material.dart';
import 'package:movie_app/presentation/login/loginscreen.dart';
import 'package:movie_app/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // canvasColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        // fontFamily: 'Inter',
      ),
      initialRoute: LoginScreen.routeName,
      onGenerateRoute: Routes.generateRoute,
    );
  }

}