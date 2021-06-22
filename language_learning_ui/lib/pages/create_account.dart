import 'package:flutter/material.dart';
import 'package:language_learning_ui/constants.dart';
import 'package:language_learning_ui/pages/choose_language.dart';
import 'package:language_learning_ui/widgets/border_text_field.dart';
import 'package:language_learning_ui/widgets/primary_button.dart';
import 'package:language_learning_ui/widgets/social_logins.dart';

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
                SocialLogins(),
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
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return ChooseLanguage();
                        },
                      ),
                    );
                  },
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
                      TextButton(
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
