import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppMain extends StatelessWidget implements PreferredSizeWidget {
  final double toolbarHeight;

  const AppMain({Key? key, this.toolbarHeight = kToolbarHeight,}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(toolbarHeight);
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                text: 'All',
              ),
              Tab(
                text: 'Film',
              ),
              Tab(
                text: 'Serials',
              ),
            ],
          ),
          backgroundColor: Colors.black,
          toolbarHeight: toolbarHeight,
        ),
      ),
    );
  }
}