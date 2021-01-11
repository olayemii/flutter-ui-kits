import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate_ui/utils/constants.dart';

class AuthTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(55.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: ScreenUtil().setHeight(52.0),
              alignment: Alignment.center,
              color: Colors.white,
              child: Text(
                "SIGN UP",
                style: TextStyle(
                  color: Color.fromRGBO(172, 174, 181, 1),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              height: ScreenUtil().setHeight(52.0),
              decoration: BoxDecoration(
                color: Color.fromRGBO(47, 105, 248, 0.1),
                border: Border(
                  bottom: BorderSide(
                    color: Constants.primaryColor,
                    width: 3.0,
                  ),
                ),
              ),
              child: Text(
                "SIGN UP",
                style: TextStyle(
                  color: Constants.blackColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
