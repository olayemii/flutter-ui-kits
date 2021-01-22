import 'package:e_learning_ui_one/models/course.dart';

class StaticData {
  static final List<Course> courses = [
    Course(
      name: "Animation Basic Course",
      category: "Multimedia",
      percentage: 80.0,
      imagePath: "assets/images/multimedia.png",
    ),
    Course(
      name: "Python for everybody",
      category: "Programming",
      percentage: 80.0,
      imagePath: "assets/images/multimedia.png",
    ),
  ];
}
