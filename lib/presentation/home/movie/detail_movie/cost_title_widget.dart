import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThePlotTitle extends StatefulWidget {
  ThePlotTitle({Key? key}) : super(key: key);

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
          
          Text('The Plot',
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.left,
          ),

        ],
      ),
    );
  }
}