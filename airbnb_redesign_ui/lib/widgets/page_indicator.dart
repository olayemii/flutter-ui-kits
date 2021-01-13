import 'package:airbnb_redesign_ui/utils/constants.dart';
import 'package:flutter/material.dart';

class PageIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => Container(
          width: index == 1 ? 22 : 10.0,
          height: 10.0,
          margin: EdgeInsets.only(right: 10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(index == 1 ? 10.0 : 5.0),
            color:
                index == 1 ? Constants.primaryColor : Constants.highlightColor2,
          ),
        ),
      ),
    );
  }
}
