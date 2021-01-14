import 'package:airbnb_redesign_ui/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class SingleProperty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Builder(builder: (context) {
        double heightFromWhiteBg = size.height - 300.0;
        return Container(
          height: size.height,
          child: Stack(
            children: [
              Positioned(
                width: size.width,
                top: -200.0,
                child: Container(
                  height: size.height,
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fitHeight,
                      image: AssetImage("assets/images/single-bg.png"),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 500.0,
                width: size.width,
                child: Container(
                  height: heightFromWhiteBg,
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.0,
                    vertical: 20.0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.8),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Soneve Kiri",
                            style: TextStyle(
                              fontSize: 18.0,
                              height: 1.5,
                              color: Color.fromRGBO(33, 45, 82, 1),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Icon(
                            Icons.favorite,
                            color: Constants.primaryColor,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            FlutterIcons.map_pin_fea,
                            color: Color.fromRGBO(138, 150, 190, 1),
                          ),
                          SizedBox(width: 10.0),
                          Text(
                            "Bashundhara, Dhaka, Bangladesh",
                            style: GoogleFonts.inter(
                              fontSize: 16.0,
                              color: Color.fromRGBO(64, 74, 104, 1),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        children: [
                          ...List.generate(
                            5,
                            (index) => Icon(
                              Icons.star,
                              size: 18.0,
                              color: Color.fromRGBO(71, 148, 255, 1),
                            ),
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Text(
                            "5.0",
                            style: TextStyle(
                              color: Color.fromRGBO(71, 148, 255, 0.8),
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        children: List.generate(
                          3,
                          (index) => Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
