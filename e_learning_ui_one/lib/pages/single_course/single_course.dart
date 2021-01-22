import 'package:e_learning_ui_one/utils/constants.dart';
import 'package:e_learning_ui_one/utils/static_data.dart';
import 'package:e_learning_ui_one/widgets/course_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SingleCourse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 20.0,
          ),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  clipBehavior: Clip.hardEdge,
                  height: ScreenUtil().setHeight(48.0),
                  width: ScreenUtil().setWidth(48.0),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(225, 234, 255, 1),
                    borderRadius: BorderRadius.circular(14.0),
                  ),
                  child: Icon(
                    FlutterIcons.chevron_left_fea,
                    color: Constants.secondaryColor,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Color Theory for Designers",
                  style: TextStyle(
                    fontSize: 17.0,
                    color: Color.fromRGBO(13, 19, 51, 1),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 2.0,
                ),
                Text(
                  "Olayemi Garuba",
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Color.fromRGBO(13, 19, 51, 0.6),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 186.0,
                  decoration: BoxDecoration(
                      color: Constants.primaryColor,
                      borderRadius: BorderRadius.circular(12.0),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(255, 89, 84, 0.38),
                          offset: Offset(0, 4),
                          blurRadius: 23.0,
                          spreadRadius: 0.0,
                        )
                      ],
                      image: DecorationImage()),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
