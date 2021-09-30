import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SoonTitle extends StatefulWidget {
  SoonTitle({Key? key}) : super(key: key);

  @override
  _SoonTitleState createState() => _SoonTitleState();
}

class _SoonTitleState extends State<SoonTitle> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(0),
      child: Row(
        children: [
          
          Text('Soon',
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.left,
          ),

        ],
      ),
    );
  }
}