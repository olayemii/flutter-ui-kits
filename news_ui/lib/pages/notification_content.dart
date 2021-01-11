import 'package:flutter/material.dart';

class NotificationContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Today"),
            Text("Clear"),
          ],
        )
      ],
    );
  }
}
