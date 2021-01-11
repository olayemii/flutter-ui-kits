import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:news_ui/models/category.dart';

class StaticData {
  static List<Category> categories = [
    Category(
      id: 1,
      title: "Most Popular",
      icon: Icon(
        FlutterIcons.chart_bar_mco,
      ),
    ),
  ];
}
