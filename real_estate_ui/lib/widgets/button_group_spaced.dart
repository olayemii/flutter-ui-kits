import 'package:flutter/material.dart';

class ButtonGroupSpaced extends StatefulWidget {
  final List<String> items;

  ButtonGroupSpaced({this.items});

  @override
  _ButtonGroupSpacedState createState() => _ButtonGroupSpacedState();
}

class _ButtonGroupSpacedState extends State<ButtonGroupSpaced> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        children: [
          "Any",
          "House",
          "Apartment",
          "Office",
          "Commercial",
          "Swimming Pool",
          "Gardens"
        ]
            .map(
              (item) => Container(
                child: Text(item),
              ),
            )
            .toList(),
      ),
    );
  }
}
