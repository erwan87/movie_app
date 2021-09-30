import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/presentation/main/mainscreen.dart';

class AppProfile extends StatelessWidget implements PreferredSizeWidget {
  final double toolbarHeight;

  const AppProfile({Key? key, this.toolbarHeight = kToolbarHeight,}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(toolbarHeight);
  Widget build(BuildContext context) {
    return AppBar(
      // title: Text('App Bar Main'),
      backgroundColor: Colors.black,
      toolbarHeight: toolbarHeight,
      leading: MaterialButton(
        child: Icon(Icons.arrow_back_ios,size: 25,color: Colors.white,),
        onPressed: (){
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context)  => MainScreen())
          );
        },
      ),
    );
  }
}