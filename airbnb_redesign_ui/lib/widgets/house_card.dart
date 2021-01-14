import 'package:airbnb_redesign_ui/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HouseCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(300.0),
      width: ScreenUtil().setWidth(255.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: Color(0xFFF4F5F6),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "assets/images/house1.png",
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Royal Malewane",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Color.fromRGBO(33, 45, 82, 1),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  "Are you searching for luxury hotels? This is for you !",
                  style: TextStyle(
                    fontSize: 13.0,
                    color: Color.fromRGBO(138, 150, 190, 1),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "From\n",
                            style: GoogleFonts.inter(
                              color: Color.fromRGBO(64, 74, 106, 1),
                            ),
                          ),
                          TextSpan(
                            text: "\$250",
                            style: GoogleFonts.inter(
                              color: Color.fromRGBO(33, 45, 82, 1),
                              fontWeight: FontWeight.w600,
                              fontSize: 22.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      Icons.favorite,
                      color: Constants.primaryColor,
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
