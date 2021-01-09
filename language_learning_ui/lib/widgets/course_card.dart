import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:language_learning_ui/models/course_model.dart';

class CourseCard extends StatelessWidget {
  final CourseModel course;
  CourseCard({this.course});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            height: ScreenUtil().setHeight(120.0),
            width: ScreenUtil().setWidth(145.0),
            decoration: BoxDecoration(
              color: this.course.color,
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
      ],
    );
  }
}
