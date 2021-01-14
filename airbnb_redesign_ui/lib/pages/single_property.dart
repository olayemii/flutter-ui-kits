import 'package:flutter/material.dart';

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
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                    ),
                  ),
                  child: Column(
                    children: [],
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
