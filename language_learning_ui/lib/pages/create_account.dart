import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:language_learning_ui/constants.dart';
import 'package:language_learning_ui/widgets/border_text_field.dart';
import 'package:language_learning_ui/widgets/primary_button.dart';

class CreateAccount extends StatefulWidget {
  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Create Your free \nAccount",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.w600,
                    color: Constants.primaryTextColor,
                  ),
                ),
                SizedBox(
                  height: 35.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: InkWell(
                        child: Container(
                          margin: EdgeInsets.only(right: 5.0),
                          height: ScreenUtil().setHeight(36.0),
                          padding: EdgeInsets.symmetric(horizontal: 13.0),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(59, 89, 153, 1),
                            borderRadius: BorderRadius.circular(25.0),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(169, 176, 185, 0.42),
                                spreadRadius: 0,
                                blurRadius: 8,
                                offset:
                                    Offset(0, 2), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                FlutterIcons.facebook_mco,
                                color: Colors.white,
                              ),
                              Text(
                                "Facebook",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        child: Container(
                          margin: EdgeInsets.only(right: 5.0),
                          height: ScreenUtil().setHeight(36.0),
                          padding: EdgeInsets.symmetric(horizontal: 13.0),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            borderRadius: BorderRadius.circular(25.0),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(169, 176, 185, 0.42),
                                spreadRadius: 0,
                                blurRadius: 8,
                                offset:
                                    Offset(0, 2), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                "assets/svg/google.svg",
                                width: 15.0,
                              ),
                              Text(
                                " Gmail",
                                style: TextStyle(
                                  color: Color.fromRGBO(35, 38, 43, 1),
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        child: Container(
                          height: ScreenUtil().setHeight(36.0),
                          padding: EdgeInsets.symmetric(horizontal: 13.0),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(2, 171, 238, 1),
                            borderRadius: BorderRadius.circular(25.0),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(169, 176, 185, 0.42),
                                spreadRadius: 0,
                                blurRadius: 8,
                                offset:
                                    Offset(0, 2), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                FlutterIcons.twitter_mco,
                                color: Colors.white,
                              ),
                              Text(
                                " Twitter",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40.0,
                ),
                Form(
                  child: Column(
                    children: [
                      BorderTextField(hintText: "First Name"),
                      SizedBox(
                        height: 15.0,
                      ),
                      BorderTextField(hintText: "Last Name"),
                      SizedBox(
                        height: 15.0,
                      ),
                      BorderTextField(hintText: "Your Email"),
                      SizedBox(
                        height: 15.0,
                      ),
                      BorderTextField(
                        hintText: "Password",
                        obscureText: true,
                        suffixIcon: Icon(
                          Icons.remove_red_eye,
                          color: Constants.primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                PrimaryButton(
                  text: "Sign Up",
                  onPressed: () {},
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  "By singning up, you agreed with our Services and Privacy Policy",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Constants.captionTextColor,
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Center(
                  child: Wrap(
                    runAlignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Text(
                        "Already have account?",
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Color.fromRGBO(169, 176, 185, 1),
                        ),
                      ),
                      FlatButton(
                        onPressed: () {},
                        child: Text(
                          "Log In",
                          style: TextStyle(
                            fontSize: 16.0,
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
        ),
      ),
    );
  }
}
