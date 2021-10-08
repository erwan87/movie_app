import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/data/movies/model/movie_item_response.dart';
import 'package:movie_app/data/movies/movie_api_client.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:movie_app/presentation/home/movie/detail_movie_widget.dart';
import 'package:movie_app/ui/_reusable/movie_horizontal_listview_widget.dart';

class MoviePopular extends StatefulWidget {
  MoviePopular({Key? key}) : super(key: key);

  @override
  _MoviePopularState createState() => _MoviePopularState();
}

class _MoviePopularState extends State<MoviePopular> {
  MovieApiClient _movieApiClient = MovieApiClient();
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220.0,
      child:
      FutureBuilder<List<MovieItemResponse>?>(
      future: _movieApiClient.getPopularMovies(),
      builder: (context, AsyncSnapshot<List<MovieItemResponse>?> snapshot) {
        if (snapshot.hasData) {
          if (snapshot.data != null) {
            List<MovieItemResponse> movies = snapshot.data!;
            return Column(
              children: [
                MovieHorizontalListViewWidget(
                  movieItems: movies,
                ),
              ],
            );
          } else {
            return Text('Error');
          }
        }

        return CircularProgressIndicator();
      },
    ),
    );
  }
}