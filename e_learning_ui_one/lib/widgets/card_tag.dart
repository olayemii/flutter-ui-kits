import 'package:e_learning_ui_one/utils/constants.dart';
import 'package:flutter/material.dart';

class CardTag extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(38, 87, 206, 0.1),
        borderRadius: BorderRadius.circular(12.0),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 15.0,
        vertical: 4.0,
      ),
      child: Text(
        "Programming",
        style: TextStyle(
          color: Constants.secondaryColor,
          fontSize: 12.0,
        ),
      ),
    );
  }
}
