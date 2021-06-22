import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:language_learning_ui/constants.dart';
import 'package:language_learning_ui/widgets/border_text_field.dart';
import 'package:language_learning_ui/widgets/course_card.dart';
import 'package:language_learning_ui/widgets/instructor_card.dart';
import 'package:language_learning_ui/widgets/topics_list.dart';
import 'package:language_learning_ui/widgets/user_menu_bar.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedIconTheme: IconThemeData(
          color: Color.fromRGBO(202, 205, 219, 1),
        ),
        selectedIconTheme: IconThemeData(
          color: Constants.primaryColor,
        ),
        items: [
          BottomNavigationBarItem(
            label: "",
            icon: Icon(FlutterIcons.home_fea),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              FlutterIcons.calendar_fea,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              FlutterIcons.edit_fea,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              FlutterIcons.user_fea,
            ),
          ),
        ],
      ),
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
                BorderTextField(
                  prefixIcon: Icon(
                    FlutterIcons.search_fea,
                    color: Colors.grey,
                  ),
                  borderRadius: 50.0,
                  hintText: "Search...",
                ),
                SizedBox(
                  height: 30.0,
                ),
                TopicsList(),
                SizedBox(height: 30.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular Courses",
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
                Container(
                  height: 22.0,
                  child: ListView.separated(
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        width: 10.0,
                      );
                    },
                    scrollDirection: Axis.horizontal,
                    itemCount: Constants.courseLevels.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Text(
                        Constants.courseLevels[index],
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight:
                              index == 0 ? FontWeight.w600 : FontWeight.w400,
                          color: index == 0
                              ? Constants.primaryColor
                              : Constants.captionTextColor,
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  height: ScreenUtil().setHeight(167.0),
                  child: ListView.separated(
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        width: 10.0,
                      );
                    },
                    scrollDirection: Axis.horizontal,
                    itemCount: Constants.courses.length,
                    itemBuilder: (BuildContext context, int index) {
                      return CourseCard(
                        course: Constants.courses[index],
                      );
                    },
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  "Instructors",
                  style: TextStyle(
                    fontSize: 21.0,
                    color: Constants.primaryTextColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 10.0),
                Container(
                  height: ScreenUtil().setHeight(140.0),
                  child: ListView.separated(
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        width: 10.0,
                      );
                    },
                    scrollDirection: Axis.horizontal,
                    itemCount: Constants.instructors.length,
                    itemBuilder: (BuildContext context, int index) {
                      return InstructorCard(
                        instructor: Constants.instructors[index],
                      );
                    },
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
