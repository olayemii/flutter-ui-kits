import 'package:airbnb_redesign_ui/models/bottom_bar_item.dart';
import 'package:airbnb_redesign_ui/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBottomBar extends StatefulWidget {
  @override
  _AppBottomBarState createState() => _AppBottomBarState();
}

class _AppBottomBarState extends State<AppBottomBar> {
  String activePage = "home";
  void setActivePage(String page) {
    setState(() {
      activePage = page;
    });
  }

  List<BottomBarItem> items = [];

  @override
  void initState() {
    items = [
      BottomBarItem(
        icon: FlutterIcons.home_fea,
        onPressed: () {
          setActivePage("home");
        },
        key: "home",
      ),
      BottomBarItem(
        icon: FlutterIcons.heart_ant,
        onPressed: () {
          setActivePage("favorites");
        },
        key: "favorites",
      ),
      BottomBarItem(
        icon: FlutterIcons.grid_fea,
        onPressed: () {
          setActivePage("menu");
        },
        key: "menu",
      ),
      BottomBarItem(
        icon: FlutterIcons.mail_fea,
        onPressed: () {
          setActivePage("messages");
        },
        key: "messages",
      ),
      BottomBarItem(
        icon: FlutterIcons.user_ant,
        onPressed: () {
          setActivePage("profile");
        },
        key: "profile",
      ),
    ];
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 12.0,
        bottom: 12.0,
        right: 12.0,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 12.0,
        vertical: 4.0,
      ),
      height: ScreenUtil().setHeight(65.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(length, (index) => null),
      ),
    );
  }
}

Widget getBottomWidget(IconData icon, bool isActive) {
  return IconButton(
    icon: Icon(
      icon,
      color: Color.fromRGBO(156, 166, 201, 1),
    ),
    onPressed: () {},
  );
}
