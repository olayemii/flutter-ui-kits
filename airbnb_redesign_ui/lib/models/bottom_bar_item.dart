import 'package:flutter/material.dart';

class BottomBarItem {
  final String key;
  final IconData icon;
  final Function onPressed;

  BottomBarItem({this.onPressed, this.icon, this.key});
}
