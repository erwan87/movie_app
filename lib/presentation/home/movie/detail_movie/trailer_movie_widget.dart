import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TrailerMovie extends StatefulWidget {
  TrailerMovie({Key? key}) : super(key: key);

  @override
  _TrailerMovieState createState() => _TrailerMovieState();
}

class _TrailerMovieState extends State<TrailerMovie> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(
          vertical: 8,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: 100,
        separatorBuilder: (context, index) => SizedBox(width: 8),
        itemBuilder:(context, index) {
          index = index + 1;
          return Column(
            children: [
                Container(
                  height: 200.0,
                  width: 200.0,
                  decoration: new BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: new DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage("https://user-images.githubusercontent.com/22274879/135382679-5a065991-9f26-4025-baee-e1daadec201d.png"),
                    ),
                  ),
                ),
                Text('La Casta de Papel : Parte $index' ,
                  style: TextStyle(color: Colors.white),
                ),
              ],
          );
        }
      ),
    );
  }
}