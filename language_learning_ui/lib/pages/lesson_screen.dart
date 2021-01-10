import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:language_learning_ui/constants.dart';
import 'package:language_learning_ui/models/course_model.dart';
import 'package:language_learning_ui/models/instructor_model.dart';
import 'package:language_learning_ui/models/topic_model.dart';
import 'package:language_learning_ui/widgets/border_text_field.dart';
import 'package:language_learning_ui/widgets/bottom_bar.dart';
import 'package:language_learning_ui/widgets/course_card.dart';
import 'package:language_learning_ui/widgets/instructor_card.dart';
import 'package:language_learning_ui/widgets/topic_card.dart';
import 'package:language_learning_ui/widgets/user_menu_bar.dart';

class LessonScreen extends StatefulWidget {
  @override
  _LessonScreenState createState() => _LessonScreenState();
}

class _LessonScreenState extends State<LessonScreen> {
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
                  decoration: BoxDecoration(
                    color: Constants.primaryColor,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(255, 99, 128, 0.6),
                        spreadRadius: 0,
                        blurRadius: 6,
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
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
