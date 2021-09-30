import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileBioWidget extends StatefulWidget {
  ProfileBioWidget({Key? key}) : super(key: key);

  @override
  _ProfileBioWidgetState createState() => _ProfileBioWidgetState();
}

class _ProfileBioWidgetState extends State<ProfileBioWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16, right: 16),
        child: Column(
          children: [
              Text(
                'Erwan Widayat',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),

              SizedBox(height: 5,),

              Text('erwan.wid@gmail.com',
                style: TextStyle(
                    fontSize: 8,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),

              SizedBox(height: 8,),

          ],
        ),
      );
  }
}