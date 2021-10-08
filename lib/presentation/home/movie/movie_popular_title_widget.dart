import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/presentation/home/movie/popular_movies_screen.dart';

class PopularTitle extends StatefulWidget {
  PopularTitle({Key? key}) : super(key: key);

  @override
  _PopularTitleState createState() => _PopularTitleState();
}

class _PopularTitleState extends State<PopularTitle> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(0),
      child: Row(
        children: [
          Expanded(
            child: Text('Popular',
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.left,
            ),
          ),

          TextButton(
            onPressed: () {
              Navigator.pushNamed(
                  context, PopularMoviesScreen.routeName
              );
            },
              child: Text('View All',
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }
}