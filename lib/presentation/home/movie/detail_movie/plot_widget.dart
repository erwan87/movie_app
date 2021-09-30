import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ThePlot extends StatefulWidget {
  ThePlot({Key? key}) : super(key: key);

  @override
  _ThePlotState createState() => _ThePlotState();
}

class _ThePlotState extends State<ThePlot> {
  String descText = "Eight thieves take hostages and lock themselves up in the Spainsh Royal Mint while a crime boss manipulates the police to cary out his plan.";
  bool descTextShowFlag = false;

  void _showDialog() {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("La Casa de Papel"),
          content: new Text(descText),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new TextButton(
              child: new Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(
                text: descText,
                style: TextStyle(color: Colors.white),
                children: <TextSpan>[
                  TextSpan(text: ' See More',
                  style: TextStyle(
                      color: Colors.red, fontSize: 18),
                      recognizer: TapGestureRecognizer() ..onTap = () {
                        _showDialog();
                      },
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}