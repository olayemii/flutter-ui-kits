import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:language_learning_ui/constants.dart';
import 'package:language_learning_ui/models/lesson_model.dart';
import 'package:language_learning_ui/widgets/bottom_bar.dart';
import 'package:language_learning_ui/widgets/lesson_card.dart';
import 'package:language_learning_ui/widgets/user_menu_bar.dart';

class LessonScreen extends StatefulWidget {
  @override
  _LessonScreenState createState() => _LessonScreenState();
}

class _LessonScreenState extends State<LessonScreen> {
  List<LessonModel> lessons = [
    LessonModel(
      imagePath: "assets/images/lesson.png",
      title: "Introduction",
      duration: "10 minutes 20 seconds",
    ),
    LessonModel(
      imagePath: "assets/images/lesson.png",
      title: "Lesson 01",
      duration: "25 minutes 20 seconds",
    ),
    LessonModel(
      imagePath: "assets/images/lesson.png",
      title: "Lesson 02",
      duration: "13 minutes 20 seconds",
    ),
    LessonModel(
      imagePath: "assets/images/lesson.png",
      title: "Lesson 03",
      duration: "45 minutes 20 seconds",
    ),
    LessonModel(
      imagePath: "assets/images/lesson.png",
      title: "Lesson 04",
      duration: "10 minutes 20 seconds",
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBar(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 30.0,
                ),
                UserMenuBar(),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  height: ScreenUtil().setHeight(180.0),
                  width: ScreenUtil().setWidth(339.24),
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
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
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
                                        "20",
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
                                "Daily English Conversation",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 24.0,
                                ),
                              ),
                              Text(
                                "Learn More",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
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
                                "assets/images/course-1.png",
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "My lessons",
                      style: TextStyle(
                        fontSize: 21.0,
                        color: Constants.primaryTextColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "View all",
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Constants.captionTextColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12.0,
                ),
                Flexible(
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return LessonCard(lesson: lessons[index]);
                    },
                    itemCount: lessons.length,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
