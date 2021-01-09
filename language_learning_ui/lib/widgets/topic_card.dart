import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:language_learning_ui/constants.dart';

class TopicCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(136.0),
      width: ScreenUtil().setHeight(246.0),
      decoration: BoxDecoration(
        color: Constants.primaryColor,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(255, 99, 128, 0.6),
            spreadRadius: 0,
            blurRadius: 6,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: SizedBox(),
          ),
          Expanded(
            child: Image.asset(
              "assets/images/course-1.png",
            ),
          )
        ],
      ),
    );
  }
}
