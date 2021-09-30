import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TheTrailerTitle extends StatefulWidget {
  TheTrailerTitle({Key? key}) : super(key: key);

  @override
  _TheTrailerTitleState createState() => _TheTrailerTitleState();
}

class _TheTrailerTitleState extends State<TheTrailerTitle> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 5),
      child: Row(
        children: [
          
          Text('Trailer',
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.left,
          ),

        ],
      ),
    );
  }
}