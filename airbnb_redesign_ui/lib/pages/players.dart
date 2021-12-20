import 'package:airbnb_redesign_ui/pages/booking_screen.dart';
import 'package:airbnb_redesign_ui/pages/player1.dart';
import 'package:airbnb_redesign_ui/utils/constants.dart';
import 'package:airbnb_redesign_ui/utils/helper.dart';
import 'package:airbnb_redesign_ui/widgets/property_features.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Players extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
     
      body: Builder(builder: (BuildContext context) {
        double heightFromWhiteBg =
            size.height - 300.0; // height for white section
        return 
         GestureDetector(
                              onTap: () {
                                Helper.nextPage(context, PlayerOne());
                              },
                              child: Container(
          height: size.height,
          child: Stack(
            children: [
              Positioned(
                width: size.width,
                child: Container(
                  height: size.height,
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      alignment: Alignment.topCenter,
                      image: AssetImage("assets/images/players.png"),
                    ),
                  ),
                ),
              ),
              
            ],
          ),
        ) 
        );
      }),
    );
  }
}
