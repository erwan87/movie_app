import 'package:flutter/material.dart';
import 'package:movie_app/data/movies/model/movie_item_response.dart';
import 'package:movie_app/presentation/home/movie/detail_movie_widget.dart';
import 'movie_horizontal_listitem_widget.dart';

class MovieHorizontalListViewWidget extends StatelessWidget {
  final List<MovieItemResponse> movieItems;
  const MovieHorizontalListViewWidget({Key? key, required this.movieItems})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemCount: 6,
        itemBuilder: (context, index) {
          return MovieHorizontalListItemWidget(
            movieItemResponse: movieItems[index],
            onTap: () {
            //   Navigator.pushNamed(
            //             context,
            //             DetailScreen.routeName,
            //             arguments: MovieDetailArguments(
            //               movieId: movieItems[index].id ?? 0,
            //               movieName: movieItems[index].title ?? '',
            //             ),
            //           );
            },
          );
        },
      ),
    );
  }
}
