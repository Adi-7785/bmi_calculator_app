import 'package:flutter/material.dart';
import 'constants.dart';

class InsideCard extends StatelessWidget {
  final IconData icon;
  final String label;
  InsideCard({this.icon, this.label});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
          color: Color(0xFF8C8D97),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
