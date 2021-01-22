import 'package:e_learning_ui_one/utils/constants.dart';
import 'package:flutter/material.dart';

class CardTag extends StatelessWidget {
  final Color backgroundColor;
  final Color textColor;
  final String text;
  CardTag({
    @required this.backgroundColor,
    @required this.textColor,
    @required this.text,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12.0),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 15.0,
        vertical: 4.0,
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: 12.0,
        ),
      ),
    );
  }
}
