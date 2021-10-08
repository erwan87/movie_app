import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/presentation/appbar/appbar_detail.dart';
import 'package:movie_app/presentation/home/movie/detail_movie/cost_widget.dart';
import 'package:movie_app/presentation/home/movie/detail_movie/plot_title_widget.dart';
import 'package:movie_app/presentation/home/movie/player/movie_player_widget.dart';
import 'detail_movie/cost_title_widget.dart';
import 'detail_movie/plot_widget.dart';
import 'detail_movie/trailer_movie_widget.dart';
import 'detail_movie/trailer_title_widget.dart';

class MovieDetailArguments {
  final int movieId;
  final String movieName;
  MovieDetailArguments({
    required this.movieId,
    required this.movieName,
  });
}

class DetailScreen extends StatefulWidget {
  final MovieDetailArguments args;
  static const String routeName = '/MovieDetailScreen';
  DetailScreen({Key? key, required this.args}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppDetail(),
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          MovieScreen(),
          ThePlotTitle(),
          ThePlot(),
          SizedBox(height: 5,),
          TheCostTitle(),
          TheCost(),
          SizedBox(height: 5,),
          TheTrailerTitle(),
          TrailerMovie(),
        ],
      ),
    );
  }
}