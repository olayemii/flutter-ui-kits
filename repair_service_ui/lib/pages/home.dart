import 'package:flutter/material.dart';
import 'package:repair_service_ui/widgets/login_form.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: size.height * 0.7,
              decoration: BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment(0, 1),
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/home-bg.png"),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              height: size.height,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 80.0,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Have some\nproblem with",
                          style: TextStyle(
                            height: 1.4,
                            fontSize: 30.0,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: " your Device?",
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  LoginForm(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
