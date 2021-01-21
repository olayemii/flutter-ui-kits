import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 36.0),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "Online learning\n",
              style: TextStyle(
                color: Colors.white,
                height: 1.4,
                fontSize: 24.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            TextSpan(
              text: "is not the next\n",
              style: TextStyle(
                color: Colors.white,
                height: 1.4,
                fontSize: 23.0,
              ),
            ),
            TextSpan(
              text: "big thing\n",
              style: TextStyle(
                color: Colors.white,
                height: 1.4,
                fontSize: 24.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            TextSpan(
              text: "it is the now\n",
              style: TextStyle(
                color: Colors.white,
                height: 1.4,
                fontSize: 23.0,
              ),
            ),
            TextSpan(
              text: "BIG THING\n",
              style: TextStyle(
                color: Colors.white,
                height: 1.4,
                fontSize: 28.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
