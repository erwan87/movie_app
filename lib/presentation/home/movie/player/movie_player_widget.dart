import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MovieScreen extends StatefulWidget {
  MovieScreen({Key? key}) : super(key: key);

  @override
  _MovieScreenState createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: 
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
              height: 150.0,
              decoration: new BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(2.0),
                          ),
              shape: BoxShape.rectangle,
              image: new DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage("https://user-images.githubusercontent.com/22274879/135382679-5a065991-9f26-4025-baee-e1daadec201d.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}