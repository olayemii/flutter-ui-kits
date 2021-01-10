import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:language_learning_ui/models/instructor_model.dart';

class InstructorCard extends StatelessWidget {
  final InstructorModel instructor;
  InstructorCard({this.instructor});
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: ScreenUtil().setHeight(140.0),
          width: ScreenUtil().setWidth(140.36),
          decoration: BoxDecoration(
            color: Color.fromRGBO(224, 230, 255, 1),
            borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(
              image: AssetImage(this.instructor.image),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(8.0),
          width: ScreenUtil().setWidth(140.36),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                this.instructor.name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                this.instructor.occupation,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
