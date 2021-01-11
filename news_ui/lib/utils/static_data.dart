import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_svg/svg.dart';
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
    ),
    Category(
      id: 4,
      title: "Politics",
      icon: SvgPicture.asset("assets/svg/politics.svg"),
    ),
    Category(
      id: 5,
      title: "Business",
      icon: Icon(FlutterIcons.handshake_o_faw),
    ),
    Category(
      id: 6,
      title: "Sports",
      icon: Icon(FlutterIcons.soccer_ball_o_faw),
    ),
    Category(
      id: 7,
      title: "Arts",
      icon: SvgPicture.asset("assets/svg/arts.svg"),
    ),
    Category(
      id: 8,
      title: "Health",
      icon: Icon(FlutterIcons.stethoscope_faw5s),
    ),
    Category(
      id: 9,
      title: "Food",
      icon: SvgPicture.asset("assets/svg/food.svg"),
    ),
    Category(
      id: 10,
      title: "Technology",
      icon: SvgPicture.asset("assets/svg/technology.svg"),
    ),
  ];
}
