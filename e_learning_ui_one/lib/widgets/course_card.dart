import 'package:e_learning_ui_one/models/course.dart';
import 'package:flutter/material.dart';

enum CardType { PRIMARY, PLAIN, SECONDARY_FADED }

class CourseCard extends StatelessWidget {
  final int index;
  final Course course;
  CourseCard({this.index, this.course});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          index % 2 == 1
              ? SizedBox(
                  height: 20.0,
                )
              : SizedBox.shrink(),
          Container(
            width: MediaQuery.of(context).size.width / 2.0 - 32.0,
            height: 200.0,
            padding: EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 20.0,
            ),
            margin:
                EdgeInsets.only(left: 5.0, right: 5.0, bottom: 5.0, top: 5.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CardTag(),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Python for everybody",
                  style: TextStyle(
                    fontSize: 17.0,
                    height: 1.1,
                    color: Color.fromRGBO(13, 19, 51, 1),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: LinearProgressIndicator(
                    value: 0.5,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
