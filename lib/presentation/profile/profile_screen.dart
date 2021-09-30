import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/presentation/appbar/appprofile_screen.dart';
import 'package:movie_app/presentation/profile/badge/menu_widget.dart';
import 'package:movie_app/presentation/profile/badge/statistic_screen_widget.dart';
import 'badge/profile_badge_widget.dart';
import 'badge/profile_bio_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppProfile(),
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          ProfileBadgeWidget(),
          ProfileBioWidget(),
          SizedBox(height: 2),
          StatisticScreen(),
          SizedBox(height: 10),
          MenuScreen(),
        ],
      ),
    );
  }
}