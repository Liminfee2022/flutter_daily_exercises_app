import 'package:daily_exercises_app/widgets/bottom_nav_item.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 80,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          BottomNavItem(
            title: "Today",
            svg: 'assets/icons/calendar.svg',
          ),
          BottomNavItem(
            title: "All Exercises",
            svg: 'assets/icons/gym.svg',
              isActive: true,
          ),
          BottomNavItem(
            title: "Setting",
            svg: 'assets/icons/Settings.svg',
          ),
        ],
      ),
    );
  }
}