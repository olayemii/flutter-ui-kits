import 'package:airbnb_redesign_ui/pages/sign_up.dart';
import 'package:airbnb_redesign_ui/utils/constants.dart';
import 'package:airbnb_redesign_ui/widgets/page_indicator.dart';
import 'package:airbnb_redesign_ui/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageTwo extends StatelessWidget {
  final int activePage;
  HomePageTwo({this.activePage});
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Container(
      height: _size.height,
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    "assets/images/page2.png",
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
            constraints: BoxConstraints(minHeight: _size.height * 0.4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Let’s find Peace with Comfort.",
                  style: TextStyle(
                    fontSize: 26.0,
                    height: 1.5,
                    color: Color.fromRGBO(33, 45, 82, 1),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                PageIndicator(activePage: activePage),
                SizedBox(
                  height: 50.0,
                ),
                PrimaryButton(
                  text: "Get Started",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (BuildContext context) {
                        return SignUp();
                      }),
                    );
                  },
                ),
                Center(
                  child: Wrap(
                    runAlignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Text(
                        "Already have account?",
                        style: GoogleFonts.inter(
                          fontSize: 14.0,
                          color: Color.fromRGBO(64, 74, 106, 1),
                        ),
                      ),
                      FlatButton(
                        onPressed: () {},
                        child: Text(
                          "Log In",
                          style: GoogleFonts.inter(
                            fontSize: 14.0,
                            color: Constants.primaryColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
