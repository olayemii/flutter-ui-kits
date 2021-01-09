import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:language_learning_ui/constants.dart';

class LanguageSelector extends StatelessWidget {
  final bool isActive;
  final String language;
  final String imagePath;
  LanguageSelector({this.isActive, this.language, this.imagePath});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        width: double.infinity,
        height: ScreenUtil().setHeight(83.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(169, 176, 185, 0.42),
              spreadRadius: 0,
              blurRadius: 8,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        child: Center(
          child: Row(
            children: [
              Image.asset(
                this.imagePath,
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                this.language,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Color.fromRGBO(34, 40, 60, 1),
                  fontWeight: FontWeight.w600,
                ),
              ),
              Spacer(),
              Icon(
                FlutterIcons.check_circle_mdi,
                color: Constants.primaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
