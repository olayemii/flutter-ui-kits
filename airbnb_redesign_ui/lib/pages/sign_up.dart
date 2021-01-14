import 'package:airbnb_redesign_ui/utils/constants.dart';
import 'package:airbnb_redesign_ui/widgets/primary_button.dart';
import 'package:airbnb_redesign_ui/widgets/register_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            FlutterIcons.keyboard_backspace_mdi,
            color: Color.fromRGBO(33, 45, 82, 1),
          ),
        ),
        title: Text(
          "Sign Up",
          style: TextStyle(
            color: Color.fromRGBO(33, 45, 82, 1),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Builder(
          builder: (BuildContext context) {
            return Container(
              height: _size.height - Scaffold.of(context).appBarMaxHeight,
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Wrap(
                      runAlignment: WrapAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 30.0),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 0.5),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          width: double.infinity,
                          child: Column(
                            children: [
                              Text(
                                "Sign Up",
                                style: TextStyle(
                                  fontSize: 22.0,
                                  color: Color.fromRGBO(33, 45, 82, 1),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              RegisterForm(),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        PrimaryButton(
                          text: "Get Started",
                          onPressed: () {},
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
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/google.png"),
                            SizedBox(
                              width: 10.0,
                            ),
                            Image.asset("assets/images/facebook.png"),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
