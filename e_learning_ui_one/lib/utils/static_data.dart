import 'package:e_learning_ui_one/models/course.dart';
import 'package:e_learning_ui_one/widgets/course_card.dart';

class StaticData {
  static final List<Course> courses = [
    Course(
      name: "Animation Basic Course",
      category: "Multimedia",
      percentage: 80.0,
      imagePath: "assets/images/multimedia.png",
      type: CardType.PRIMARY,
    ),
    Course(
      name: "Python for everybody",
      category: "Programming",
      percentage: 60.0,
      imagePath: "assets/images/programmer.png",
      type: CardType.PLAIN,
    ),
    Course(
      name: "Social Media Monitoring",
      category: "Social Media",
      percentage: 30.0,
      imagePath: "assets/images/social.png",
      type: CardType.PLAIN,
    ),
    Course(
      name: "Fundamentals of Design",
      category: "Graphic Design",
      percentage: 60.0,
      imagePath: "assets/images/designer.png",
      type: CardType.SECONDARY_FADED,
    ),
  ];
}
