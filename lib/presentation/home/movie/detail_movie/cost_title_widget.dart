import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThePlotTitle extends StatefulWidget {
  final String title;
  ThePlotTitle({Key? key, required this.title}) : super(key: key);

  @override
  _ThePlotTitleState createState() => _ThePlotTitleState();
}

class _ThePlotTitleState extends State<ThePlotTitle> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 5),
      child: Row(
        children: [
          
          Text(widget.title,
            style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
            textAlign: TextAlign.left,
          ),

        ],
      ),
    );
  }
}