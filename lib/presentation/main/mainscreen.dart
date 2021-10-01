import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_app/presentation/home/home_screen.dart';
import 'package:movie_app/presentation/profile/profile_screen.dart';
import 'package:movie_app/values/assets.dart';

enum SelectedBody { home, search, favorite, profile }

class MainScreen extends StatefulWidget {
  static const String routeName = '/MainScreen';
  const MainScreen({ Key? key }) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late SelectedBody selectedBody;
  bool isPressedHome      = false;
  bool isPressedSearch    = false;
  bool isPressedFavorite  = false;
  bool isPressedProfile   = false;

  @override
  void initState() {
    super.initState();

    selectedBody = SelectedBody.home;
    isPressedHome= true;
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
                setState(() {
                  isPressedHome     = !isPressedHome;
                  isPressedSearch   = false;
                  isPressedFavorite = false;
                  isPressedProfile  = false;
                });
                break;
              case 1:
                selectedBody = SelectedBody.search;
                setState(() {
                  isPressedHome     = false;
                  isPressedSearch   = !isPressedSearch;
                  isPressedFavorite = false;
                  isPressedProfile  = false;
                });
                break;
              case 2:
                selectedBody = SelectedBody.favorite;
                setState(() {
                  isPressedHome     = false;
                  isPressedSearch   = false;
                  isPressedFavorite = !isPressedFavorite;
                  isPressedProfile  = false;
                });
                break;
              case 3:
                selectedBody = SelectedBody.profile;
                setState(() {
                  isPressedHome     = false;
                  isPressedSearch   = false;
                  isPressedFavorite = false;
                  isPressedProfile  = !isPressedProfile;
                });
                break;
              default:
                selectedBody = SelectedBody.home;
                  setState(() {
                    isPressedHome     = !isPressedHome;
                    isPressedSearch   = false;
                    isPressedFavorite = false;
                    isPressedProfile  = false;
                  });
                break;
            }
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(ICON_HOME,color: isPressedHome ? Colors.red : Colors.white.withOpacity(0.3),),
            label: 'Home',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(ICON_SEARCH, color: isPressedSearch ? Colors.red : Colors.white.withOpacity(0.3)),
            label: 'Search',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined,
              color: isPressedFavorite ? Colors.red : Colors.white.withOpacity(0.3),
            ),
            label: 'Shop',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person,
              color: isPressedProfile ? Colors.red : Colors.white.withOpacity(0.3),
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
      case SelectedBody.favorite:
        return Center(child: Text('Favorite Screen', style: TextStyle(color: Colors.red),));
      case SelectedBody.profile:
        return ProfileScreen();
      default:
        return SizedBox.shrink();
    }
  }
}