import 'package:flutter/cupertino.dart';
import 'package:movie_app/presentation/profile/badge/profile_count_widget.dart';

class StatisticScreen extends StatefulWidget {
  StatisticScreen({Key? key}) : super(key: key);

  @override
  _StatisticScreenState createState() => _StatisticScreenState();
}

class _StatisticScreenState extends State<StatisticScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50, right: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ProfileCountWidget(
            count: 12,
            label: 'Watched',
            onTap: () {},
          ),
          
          SizedBox(width: 50),

          ProfileCountWidget(
            count: 12,
            label: 'Started',
            onTap: () {},
          ),

          SizedBox(width: 50),

          ProfileCountWidget(
            count: 12,
            label: 'Favorite',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}