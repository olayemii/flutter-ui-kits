import 'package:e_learning_ui_one/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 20.0,
        ),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hello Julia",
                    style: TextStyle(
                      color: Constants.secondaryColor,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    height: ScreenUtil().setHeight(48.0),
                    width: ScreenUtil().setWidth(48.0),
                    decoration:
                        BoxDecoration(color: Color.fromRGBO(r, g, b, opacity)),
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
