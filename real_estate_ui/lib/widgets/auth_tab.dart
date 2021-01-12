import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate_ui/utils/constants.dart';

class AuthTab extends StatelessWidget {
  final String active;
  final Function setActive;
  AuthTab({this.active, this.setActive});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(55.0),
      child: Row(
        children: [
          getTabItem("SIGN UP", active == "register", "register", setActive),
          getTabItem("LOGIN", active == "login", "login", setActive),
        ],
      ),
    );
  }
}

Widget getTabItem(String title, bool isActive, String key, Function setActive) {
  return Expanded(
    child: GestureDetector(
      onTap: () {
        setActive(key);
      },
      child: Container(
        alignment: Alignment.center,
        height: ScreenUtil().setHeight(52.0),
        decoration: BoxDecoration(
          color:
              isActive ? Color.fromRGBO(47, 105, 248, 0.1) : Colors.transparent,
          border: isActive
              ? Border(
                  bottom: BorderSide(
                    color: Constants.primaryColor,
                    width: 3.0,
                  ),
                )
              : null,
        ),
        child: Text(
          title,
          style: TextStyle(
            color: isActive
                ? Constants.blackColor
                : Color.fromRGBO(172, 174, 181, 1),
          ),
        ),
      ),
    ),
  );
}
