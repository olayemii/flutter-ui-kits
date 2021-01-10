import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:language_learning_ui/constants.dart';
import 'package:language_learning_ui/models/topic_model.dart';
import 'package:language_learning_ui/pages/lesson_screen.dart';

class TopicCard extends StatelessWidget {
  final TopicModel topic;
  TopicCard({this.topic});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (BuildContext context) {
            return LessonScreen();
          }),
        );
      },
      child: Container(
        height: ScreenUtil().setHeight(136.0),
        width: ScreenUtil().setWidth(246.0),
        decoration: BoxDecoration(
          color: this.topic.color,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: this.topic.boxShadow,
        ),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 30.0,
                          height: 30.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              this.topic.points,
                              style: TextStyle(
                                color: Constants.primaryTextColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          "Points",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 14.0,
                          ),
                        )
                      ],
                    ),
                    Text(
                      this.topic.topic,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      "it takes ${this.topic.time}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      this.topic.image,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
