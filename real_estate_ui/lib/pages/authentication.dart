import 'package:flutter/material.dart';
import 'package:real_estate_ui/utils/constants.dart';
import 'package:real_estate_ui/widgets/auth_tab.dart';
import 'package:real_estate_ui/widgets/login_form.dart';

class Authentication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(247, 249, 255, 1),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                children: [
                  ClipRect(
                    child: Transform.scale(
                      scale: 1.5,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.25,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/pattern.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0.0,
                    child: Container(
                      constraints: BoxConstraints(minWidth: 200.0),
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height * 0.18,
                      child: Text(
                        "Welcome back",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      color: Constants.primaryColor,
                    ),
                  )
                ],
              ),
              AuthTab(),
              SizedBox(
                height: 40.0,
              ),
              LoginForm(),
              SizedBox(
                height: 20.0,
              ),
              FlatButton(
                onPressed: () {},
                child: Text(
                  "Terms & Conditions",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
