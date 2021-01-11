import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SingleNewsHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(100.0),
      padding: EdgeInsets.only(bottom: 20.0, left: 16.0, right: 16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(169, 176, 185, 0.42),
            spreadRadius: 0,
            blurRadius: 2,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Text(
              "Politics",
              style: GoogleFonts.ptSans(
                fontSize: 16.0,
              ),
            ),
          ),
          Icon(
            FlutterIcons.bookmark_fea,
            size: 20.0,
          ),
          SizedBox(
            width: 20.0,
          ),
          Icon(
            FlutterIcons.share_2_fea,
            size: 20.0,
          )
        ],
      ),
    );
  }
}
