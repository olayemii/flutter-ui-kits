import 'package:e_learning_ui_one/pages/home/widgets/header_text.dart';
import 'package:e_learning_ui_one/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  AnimationController animationController;
  @override
  void initState() {
    animationController = AnimationController(vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.primaryColor,
      body: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: kToolbarHeight + 20.0),
            HeaderText(),
            Expanded(
              child: Container(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 0.0),
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Positioned(
                        bottom: -20.0,
                        left: -100.0,
                        child: SvgPicture.asset("assets/svgs/girl_on_book.svg"),
                      ),
                      Positioned(
                        bottom: -20.0,
                        left: MediaQuery.of(context).size.width / 2.0 - 70.0,
                        child: SvgPicture.asset("assets/svgs/guy_laptop.svg"),
                      ),
                      SvgPicture.asset(
                        "assets/svgs/microscope.svg",
                        width: 180.0,
                      ),
                      Positioned(
                        bottom: 190.0,
                        left: 0.0,
                        child:
                            SvgPicture.asset("assets/svgs/guy_hold_bulb.svg"),
                      ),
                      Positioned(
                        bottom: 383.0,
                        left: 5.0,
                        child: SvgPicture.asset("assets/svgs/bulb.svg"),
                      ),
                      Positioned(
                        bottom: 415.0,
                        left: -3.0,
                        child: SvgPicture.asset(
                          "assets/svgs/light.svg",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
