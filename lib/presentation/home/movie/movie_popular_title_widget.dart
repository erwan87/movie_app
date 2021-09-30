import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
          Text('Popular',
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.left,
          ),

          SizedBox(width: 10,),

          Expanded(child: Text('View All',
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.right,
            ),
          ),
          
        ],
      ),
    );
  }
}