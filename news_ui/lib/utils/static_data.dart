import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:news_ui/models/category.dart';

class StaticData {
  static List<Category> categories = [
    Category(
      id: 1,
      title: "Most Popular",
      icon: Icon(
        FlutterIcons.trending_up_fea,
      ),
    ),
    Category(
      id: 2,
      title: "World",
      icon: Icon(
        FlutterIcons.globe_ent,
      ),
    ),
    Category(
      id: 3,
      title: "Science",
      icon: Icon(
        FlutterIcons.react_faw5d,
      ),
    )
  ];
}
