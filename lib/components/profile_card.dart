import 'package:flutter/material.dart';
import 'package:atozpoint/constants.dart';

class ProfileCard extends StatelessWidget {
  ProfileCard({required this.backgroundColor});
  Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(shape: BoxShape.circle, color: backgroundColor),
    );
  }
}
