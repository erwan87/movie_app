import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TheCostTitle extends StatefulWidget {
  TheCostTitle({Key? key}) : super(key: key);

  @override
  _TheCostTitleState createState() => _TheCostTitleState();
}

class _TheCostTitleState extends State<TheCostTitle> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 5),
      child: Row(
        children: [
          
          Text('The Cost',
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.left,
          ),

        ],
      ),
    );
  }
}