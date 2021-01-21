import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:laundry_app_ui/utils/constants.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.primaryColor,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      FlutterIcons.keyboard_backspace_mdi,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "Log in to your account",
                    style: Theme.of(context).textTheme.headline6.copyWith(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
