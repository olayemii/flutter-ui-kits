import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:repair_service_ui/utils/constants.dart';

class RequestServiceFlow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Constants.primaryColor,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SafeArea(child: SizedBox()),
              Align(
                alignment: Alignment.centerRight,
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/dp.png"),
                ),
              ),
              Row(
                children: List.generate(
                  3,
                  (index) => Container(
                    width: ScreenUtil().setWidth(9.0),
                    height: ScreenUtil().setHeight(9.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
