import 'package:flutter/material.dart';
import 'package:language_learning_ui/models/course_model.dart';
import 'package:language_learning_ui/models/instructor_model.dart';
import 'package:language_learning_ui/models/topic_model.dart';

class Constants {
  static const Color primaryTextColor = Color.fromRGBO(38, 50, 98, 1);
  static const Color captionTextColor = Color.fromRGBO(157, 161, 180, 1);
  static const Color primaryColor = Color.fromRGBO(255, 99, 128, 1.0);

  static List<TopicModel> topics = [
    TopicModel(
      color: Constants.primaryColor,
      boxShadow: [
        BoxShadow(
          color: Color.fromRGBO(255, 99, 128, 0.6),
          spreadRadius: 0,
          blurRadius: 6,
          offset: Offset(0, 2), // changes position of shadow
        ),
      ],
      topic: "interjections & colloquial",
      time: "30 min",
      points: "20",
      image: "assets/images/course-1.png",
    ),
    TopicModel(
      color: Color.fromRGBO(25, 118, 210, 1),
      boxShadow: [
        BoxShadow(
          color: Color.fromRGBO(25, 118, 210, 0.6),
          spreadRadius: 0,
          blurRadius: 6,
          offset: Offset(0, 2), // changes position of shadow
        ),
      ],
      topic: "interjections & colloquial",
      time: "30 min",
      points: "30",
      image: "assets/images/course-2.png",
    )
  ];
  static List<String> courseLevels = [
    "Beginner",
    "Intermediate",
    "Advanced",
    "Professional"
  ];
  static List<CourseModel> courses = [
    CourseModel(
      name: "Daily English Conversation",
      color: Color.fromRGBO(86, 131, 223, 1),
      image: "assets/images/course-3.png",
    ),
    CourseModel(
      name: "Learn new vocabulary",
      color: Color.fromRGBO(255, 152, 117, 1),
      image: "assets/images/course-4.png",
    ),
    CourseModel(
      name: "Daily English Conversation",
      color: Color.fromRGBO(255, 133, 125, 1),
      image: "assets/images/course-5.png",
    ),
  ];
  static List<InstructorModel> instructors = [
    InstructorModel(
      name: "Jennifer Lee",
      occupation: "UI Designer",
      image: "assets/images/person-1.png",
    ),
    InstructorModel(
      name: "Olayemii Garuba",
      occupation: "Software Dev",
      image: "assets/images/person-2.png",
    ),
    InstructorModel(
      name: "Christopher Gary",
      occupation: "Software Dev",
      image: "assets/images/person-3.png",
    )
  ];
}
