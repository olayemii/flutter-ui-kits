import 'package:airbnb_redesign_ui/utils/constants.dart';
import 'package:flutter/material.dart';

class PageIndicator extends StatelessWidget {
  final int activePage;
  PageIndicator({this.activePage});

  @override
  Widget build(BuildContext context) {
    return Row(
      // We are making a 3 page page view
      children: List.generate(
        3,
        (index) => Container(
          width: index == activePage ? 22.0 : 10.0,
          height: 10.0,
          margin: EdgeInsets.only(right: 10.0),
          decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(index == activePage ? 10.0 : 50.0),
            color: index == activePage
                ? Constants.primaryColor
                : Constants.highlightColor2,
          ),
        ),
      ),
    );
  }
}
