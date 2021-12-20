import 'package:airbnb_redesign_ui/models/property.dart';
import 'package:airbnb_redesign_ui/pages/single_property_page.dart';
import 'package:airbnb_redesign_ui/utils/constants.dart';
import 'package:airbnb_redesign_ui/utils/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TicketCard extends StatelessWidget {
  final Property house;
  TicketCard({this.house});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Helper.nextPage(context, SinglePropertyPage());
      },
      child: Container(
        height: ScreenUtil().setHeight(250.0),
        width: ScreenUtil().setWidth(200.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(0.0),
         
          color: Color(0xFFCDCCDB),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.black26,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      house.imagePath,
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
                    house.name,
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
                    house.description,
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
                              text: "Amount Paid \n",
                              style: GoogleFonts.inter(
                                color: Color.fromRGBO(64, 74, 106, 1),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: house.price,
                              style: GoogleFonts.inter(
                                color: Color.fromRGBO(33, 45, 82, 1),
                                fontWeight: FontWeight.w600,
                                fontSize: 22.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                     
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
