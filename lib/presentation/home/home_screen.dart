import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/presentation/appbar/appbar_main.dart';
import 'package:movie_app/presentation/home/movie/movie_popular_widget.dart';
import 'movie/movie_popular_title_widget.dart';
import 'movie/movie_soon_title_widget.dart';
import 'movie/movie_soon_widget.dart';
import 'movie/watched_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppMain(),
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          AlreadyWatch(),
          PopularTitle(),
          MoviePopular(),
          SoonTitle(),
          MovieSoon(),
        ],
      ),
    );
  }
}