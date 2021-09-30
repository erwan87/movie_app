import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/presentation/main/mainscreen.dart';

class AppDetail extends StatelessWidget implements PreferredSizeWidget {
  final double toolbarHeight;

  const AppDetail({Key? key, this.toolbarHeight = kToolbarHeight,}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(toolbarHeight);
  Widget build(BuildContext context) {
    return AppBar(
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
      title: Row(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Text('La Casa de Papel', style: TextStyle(fontSize: 20),),
            ),
          ),
          
          Expanded(
            child: Container(
              alignment: Alignment.centerRight,
              child: Icon(Icons.share, size: 20, color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}