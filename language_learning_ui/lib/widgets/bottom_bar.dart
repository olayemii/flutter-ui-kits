import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:language_learning_ui/constants.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      unselectedIconTheme: IconThemeData(
        color: Color.fromRGBO(202, 205, 219, 1),
      ),
      selectedIconTheme: IconThemeData(
        color: Constants.primaryColor,
      ),
      items: [
        BottomNavigationBarItem(
          label: "",
          icon: Icon(FlutterIcons.home_fea),
        ),
        BottomNavigationBarItem(
          label: "",
          icon: Icon(
            FlutterIcons.calendar_fea,
          ),
        ),
        BottomNavigationBarItem(
          label: "",
          icon: Icon(
            FlutterIcons.edit_fea,
          ),
        ),
        BottomNavigationBarItem(
          label: "",
          icon: Icon(
            FlutterIcons.user_fea,
          ),
        ),
      ],
    );
  }
}
