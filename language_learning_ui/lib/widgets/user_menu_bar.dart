import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:language_learning_ui/constants.dart';

class UserMenuBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage("assets/images/profile.png"),
          radius: 25.0,
          backgroundColor: Colors.transparent,
        ),
        SizedBox(
          width: 15.0,
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "Hello,\n",
                style: TextStyle(
                  fontSize: 14.0,
                  color: Color.fromRGBO(152, 156, 173, 1),
                ),
              ),
              TextSpan(
                text: "Jennifer Lee",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  color: Constants.primaryTextColor,
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        IconButton(
          icon: Icon(
            FlutterIcons.bell_fea,
            color: Constants.primaryTextColor,
          ),
          onPressed: () {},
        )
      ],
    );
  }
}
