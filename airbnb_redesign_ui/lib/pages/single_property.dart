import 'package:flutter/material.dart';

class SingleProperty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0.0,
      ),
      body: Builder(builder: (context) {
        double heightFromWhiteBg =
            size.height - 300.0 - Scaffold.of(context).appBarMaxHeight;
        return Container(
          height: size.height - kToolbarHeight,
          child: Stack(
            children: [
              Container(
                height: 300.0,
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: FittedBox(
                  child: Container(
                    width: size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: CircleAvatar(
                            backgroundImage: AssetImage("assets/images/dp.png"),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          "Hii, Uigiant",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.77),
                            fontSize: 22.0,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "Choose your\ndevice",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35.0,
                            fontWeight: FontWeight.w600,
                            height: 1.2,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 300.0,
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
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
