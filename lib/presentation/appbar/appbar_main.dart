import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppMain extends StatelessWidget implements PreferredSizeWidget {
  final double toolbarHeight;

  const AppMain({Key? key, this.toolbarHeight = kToolbarHeight,}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(toolbarHeight);
  Widget build(BuildContext context) {
    return AppBar(
      title: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'All',
                style: TextStyle(color: Colors.white),
                children: const <TextSpan>[
                          TextSpan(
                            text: ' Film ', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                          TextSpan(
                            text: ' Serials ', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                        ],
              ),
            ),
      automaticallyImplyLeading: false,
      backgroundColor: Colors.black,
      toolbarHeight: toolbarHeight,
    );
  }
}