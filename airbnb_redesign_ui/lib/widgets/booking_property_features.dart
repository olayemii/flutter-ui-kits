import 'package:flutter/material.dart';

class BookingPropertyFeatures extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        padding: EdgeInsets.symmetric(vertical: 20.0),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.3),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Text("Room"),
                  Text("01"),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Text("Adult"),
                  Text("01"),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Text("Child"),
                  Text("01"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
