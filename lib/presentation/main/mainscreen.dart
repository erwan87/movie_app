import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_app/presentation/home/home_screen.dart';
import 'package:movie_app/presentation/profile/profile_screen.dart';
import 'package:movie_app/values/assets.dart';

enum SelectedBody { home, search, reels, shop, profile }

class MainScreen extends StatefulWidget {
  static const String routeName = '/MainScreen';
  const MainScreen({ Key? key }) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late SelectedBody selectedBody;

  @override
  void initState() {
    super.initState();

    selectedBody = SelectedBody.home;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: _getSelectedBody(selectedBody),
      bottomNavigationBar: new BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.red,
        onTap: (selectedIndex) {
          setState(() {
            switch (selectedIndex) {
              case 0:
                selectedBody = SelectedBody.home;
                break;
              case 1:
                selectedBody = SelectedBody.search;
                break;
              case 2:
                selectedBody = SelectedBody.reels;
                break;
              case 3:
                selectedBody = SelectedBody.profile;
                break;
              default:
                selectedBody = SelectedBody.home;
                break;
            }
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(ICON_HOME,color: Colors.white,),
            label: 'Home',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(ICON_SEARCH, color: Colors.white),
            label: 'Search',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined,
              color: Colors.white,
            ),
            label: 'Shop',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.switch_account_outlined,
              color: Colors.white,
            ),
            label: 'Profile',
            backgroundColor: Colors.black,
          ),
        ],
      ),
    );
  }

  Widget _getSelectedBody(SelectedBody selectedBody) {
    switch (selectedBody) {
      case SelectedBody.home:
        return HomeScreen();
      case SelectedBody.search:
        return Center(child: Text('Search Screen', style: TextStyle(color: Colors.red),));
      case SelectedBody.reels:
        return Center(child: Text('Favorite Screen', style: TextStyle(color: Colors.red),));
      case SelectedBody.profile:
        return ProfileScreen();
      default:
        return SizedBox.shrink();
    }
  }
}