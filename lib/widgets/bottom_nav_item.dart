import 'package:daily_exercises_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavItem extends StatelessWidget {
  final String? title;
  final String? svg;
  final VoidCallback? press;
  final bool? isActive;
  const BottomNavItem({
    Key? key,
    this.title,
    this.svg,
    this.press,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SvgPicture.asset(
            '$svg',
            color: isActive! ? kActiveIconColor : kTextColor,
          ),
          Text(
            "$title",
            style: TextStyle(color: isActive! ? kActiveIconColor : kTextColor),
          ),
        ],
      ),
    );
  }
}