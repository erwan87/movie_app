import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'detail_movie_widget.dart';

class MovieSoon extends StatefulWidget {
  MovieSoon({Key? key}) : super(key: key);

  @override
  _MovieSoonState createState() => _MovieSoonState();
}

class _MovieSoonState extends State<MovieSoon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
                top: 10.0,
              ),
              child: GestureDetector(
                onTap: () {
                  // Navigator.of(context).pushReplacement(
                  //   MaterialPageRoute(builder: (context)  => DetailScreen())
                  // );
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 120.0,
                      height: 150.0,
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(2.0),
                      ),
                      shape: BoxShape.rectangle,
                      image: new DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage("https://image.tmdb.org/t/p/w300_and_h450_bestv2/8j12tohv1NBZNmpU93f47sAKBbw.jpg"),
                        )),
                      ),

                    SizedBox(
                      height: 10.0,
                    ),

                    Container(
                      width: 100,
                      child: Text(
                              'Prodigal Son',
                              maxLines: 2,
                              style: TextStyle(
                                height: 1.4,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0,
                              ),
                          ),
                      ),

                      SizedBox(
                        height: 5.0,
                      ),

                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          RatingBar.builder(
                            itemSize: 12.0,
                            initialRating: 3.5,
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

                          Text('(55)',
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                  ],
                ),
              ),
          );
        }
      ),
    );
  }
}