import 'package:flutter/material.dart';
import 'package:laundry_app_ui/utils/constants.dart';
import 'package:laundry_app_ui/utils/helper.dart';
import 'package:laundry_app_ui/widgets/app_button.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.primaryColor,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 3,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Positioned(
                    top: 100.0,
                    left: 0.0,
                    right: 0.0,
                    child: Container(
                      height: 150.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/cloth_faded.png"),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
<<<<<<< HEAD
                      padding: const EdgeInsets.all(20.0),
=======
                      padding: EdgeInsets.all(20.0),
>>>>>>> bd39d758e17fd94402b4af15c633b6af7f5bfcf2
                      child: Image.asset(
                        "assets/images/illustration.png",
                        scale: 1.1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 24.0,
                ),
                decoration: BoxDecoration(
<<<<<<< HEAD
                  color: Color.fromRGBO(245, 247, 249, 1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
=======
                  color: Constants.scaffoldBackgroundColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30.0),
                    topLeft: Radius.circular(30.0),
>>>>>>> bd39d758e17fd94402b4af15c633b6af7f5bfcf2
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
<<<<<<< HEAD
                    SizedBox(
                      height: 20.0,
                    ),
=======
                    SizedBox(height: 20.0),
>>>>>>> bd39d758e17fd94402b4af15c633b6af7f5bfcf2
                    Text(
                      "Welcome to Laundree!",
                      style: Theme.of(context).textTheme.headline6.copyWith(
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(19, 22, 33, 1),
                          ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "This is the first version of our laundry app. Please sign in or create an account below.",
                      style: TextStyle(
                        color: Color.fromRGBO(74, 77, 84, 1),
                        fontSize: 14.0,
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
<<<<<<< HEAD
=======
                    // Let's create a generic button widget
>>>>>>> bd39d758e17fd94402b4af15c633b6af7f5bfcf2
                    AppButton(
                      text: "Log In",
                      type: ButtonType.PLAIN,
                      onPressed: () {
                        nextScreen(context, "/login");
                      },
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    AppButton(
                      text: "Create an Account",
                      type: ButtonType.PRIMARY,
<<<<<<< HEAD
                    ),
=======
                    )
>>>>>>> bd39d758e17fd94402b4af15c633b6af7f5bfcf2
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
