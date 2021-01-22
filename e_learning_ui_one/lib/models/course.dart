import 'package:e_learning_ui_one/widgets/course_card.dart';

class Course {
  final String name;
  final String imagePath;
  final double percentage;
  final String category;
  final CardType type;

  Course({
    this.imagePath,
    this.category,
    this.name,
    this.percentage,
    this.type,
  });
}
