import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:movie_app/data/movies/model/movie_item_response.dart';
import 'package:movie_app/data/movies/movie_api_client.dart';
import 'package:movie_app/presentation/home/movie/detail_movie_widget.dart';

class MovieHorizontalListItemWidget extends StatelessWidget {
  final VoidCallback onTap;
  final MovieItemResponse movieItemResponse;

  const MovieHorizontalListItemWidget({
    Key? key,
    required this.movieItemResponse,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigator.pushNamed(
        //   context,
        //   DetailScreen.routeName,
          // arguments: MovieDetailArguments(
          // movieId: movieItemResponse.id ?? 0,
          // movieName: movieItemResponse.title ?? '',
          // )
        // );
      },
      child: SizedBox(
        width: 140,
        child: Card(
          child: Column(
            children: [
              Expanded(
                child: CachedNetworkImage(
                  imageUrl: '$IMAGE_BASE_URL${movieItemResponse.posterPath}',
                  width: 130,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                      width: 100,
                      child: Text(
                              '${movieItemResponse.title}',
                              maxLines: 2,
                              style: TextStyle(
                                height: 1.4,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0,
                              ),
                          ),
                      ),

                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          RatingBar.builder(
                            itemSize: 10.0,
                            initialRating: 1.1,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.red,
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),

                          Text('(${movieItemResponse.voteCount})',
                          style: TextStyle(color: Colors.black,fontSize: 10),
                          textAlign: TextAlign.start,
                          ),
                        ],
                      ),
            ],
          ),
        ),
      ),
    );
  }
}
