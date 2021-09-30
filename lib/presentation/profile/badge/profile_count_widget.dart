import 'package:flutter/material.dart';
import 'package:numeral/numeral.dart';

class ProfileCountWidget extends StatelessWidget {
  final int count;
  final String label;
  final VoidCallback? onTap;

  const ProfileCountWidget({
    Key? key,
    required this.count,
    required this.label,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Text(
            Numeral(count).value(),
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 1),
          Text(
            label,
            style: TextStyle(
              fontSize: 13,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
