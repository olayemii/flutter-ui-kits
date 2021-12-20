import 'package:airbnb_redesign_ui/models/bottom_bar_item.dart';
import 'package:airbnb_redesign_ui/pages/dashboard.dart';
import 'package:airbnb_redesign_ui/pages/favourites.dart';
import 'package:airbnb_redesign_ui/pages/menu.dart';
import 'package:airbnb_redesign_ui/utils/constants.dart';
import 'package:airbnb_redesign_ui/utils/helper.dart';
import 'package:airbnb_redesign_ui/pages/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBottomNavigationTicket extends StatefulWidget {
  @override
  _AppBottomNavigationTicketState createState() => _AppBottomNavigationTicketState();
}

class _AppBottomNavigationTicketState extends State<AppBottomNavigationTicket> {
  String activePage = "messages"; // Track active page

  void setActivePage(String page) {
    setState(() {
      activePage = page;
    });
  }

  //LEts create a model for the items on the bar
  List<BottomBarItem> items = [];

  @override
  void initState() {
    items = [
      BottomBarItem(
        icon: FlutterIcons.home_fea,
        onPressed: () {
          Helper.nextPage(context, Dashboard());
          setActivePage("home");
        },
        key: "home",
      ),
      BottomBarItem(
        icon: FlutterIcons.heart_ant,
        onPressed: () {
          setActivePage("favorites");
          Helper.nextPage(context, Favourites());
        },
        key: "favorites",
      ),
      BottomBarItem(
        icon: FlutterIcons.grid_fea,
        onPressed: () {
          setActivePage("menu");
            Helper.nextPage(context, Menu());
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
          Helper.nextPage(context, Profile());
          setActivePage("profile");
        },
        key: "profile",
      ),
    ];
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
      padding: EdgeInsets.symmetric(
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
        children: items
            .map(
              (BottomBarItem item) =>
                  getBottomWidgetItem(item, activePage == item.key),
            )
            .toList(),
      ),
    );
  }
}

Widget getBottomWidgetItem(BottomBarItem item, bool isActive) {
  return Container(
    height: ScreenUtil().setHeight(62.0),
    width: ScreenUtil().setWidth(62.0),
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: isActive ? Constants.primaryColor : Colors.transparent,
    ),
    child: AnimatedSwitcher(
      duration: Duration(milliseconds: 450),
      child: isActive
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 5.0,
                ),
                Container(
                  height: 5.0,
                  width: 5.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                )
              ],
            )
          : Container(
              margin: EdgeInsets.only(bottom: 10.0),
              child: IconButton(
                icon: Icon(
                  item.icon,
                  color: Color.fromRGBO(156, 166, 201, 1),
                ),
                onPressed: item.onPressed,
              ),
            ),
    ),
  );
}
