import 'package:flutter/material.dart';
import 'package:movie_app/presentation/home/movie/detail_movie/cost_title_widget.dart';
import 'package:movie_app/presentation/home/movie/detail_movie/cost_widget.dart';
import 'package:movie_app/presentation/home/movie/detail_movie/plot_title_widget.dart';

import 'movie_detail_body.dart';

class MovieDetailArguments {
  final int movieId;
  final String movieName;
  MovieDetailArguments({
    required this.movieId,
    required this.movieName,
  });
}

class MovieDetailScreen extends StatelessWidget {
  final MovieDetailArguments args;

  const MovieDetailScreen({Key? key, required this.args}) : super(key: key);
  static const String routeName = '/detail_movie';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(args.movieName, style: TextStyle(fontSize: 20),),
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            MovieDetailBody(movieId: args.movieId),
            // SizedBox(height: 10,),
            // TheCostTitle(),
            // TheCost(),
          ],
        ),
      ),
    );
  }
}
