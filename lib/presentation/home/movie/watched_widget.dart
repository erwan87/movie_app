import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class AlreadyWatch extends StatelessWidget {
  const AlreadyWatch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      height: 280,
      color: Colors.black,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 270.0,
                  decoration: new BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: new DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage("https://image.tmdb.org/t/p/w300_and_h450_bestv2/8j12tohv1NBZNmpU93f47sAKBbw.jpg"),
                        ),
                  ),
                ),
              ),
              SizedBox(width: 10,),
              Expanded(
                child: Column(
                  children: [

                      Row(
                        children: [
                          Text('You Started Watching',style: TextStyle(color: Colors.white, fontSize: 12, fontStyle: FontStyle.italic),),
                        ],
                      ),

                      Row(
                        children: [
                          Text('La Case de Papel',style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),
                        ],
                      ),

                      Row(
                        children: [
                          Text('Part 4',style: TextStyle(color: Colors.white, fontSize: 14),),
                        ],
                      ),

                      Row(
                        children: <Widget>[
                          RatingBar.builder(
                            itemSize: 14.0,
                            initialRating: 4.7,
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
                        ],
                      ),

                      Row(
                        children: [
                          Text('Spain | 2017 | Thriller',style: TextStyle(color: Colors.white, fontSize: 14, fontStyle: FontStyle.italic),),
                        ],
                      ),

                      SizedBox(height: 20,),

                      Row(
                        children: [
                          Text('Watching 68 %',style: TextStyle(color: Colors.white, fontSize: 16),),
                        ],
                      ),

                      SizedBox(height: 20,),

                      Row(
                        children: [
                          Icon(Icons.play_circle, size:50, color: Colors.red.withOpacity(0.6),),
                        ],
                      ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}