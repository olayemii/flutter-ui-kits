import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:repair_service_ui/utils/constants.dart';

class RequestServiceFlow extends StatelessWidget {
  final PreferredSizeWidget appBar = AppBar(
    brightness: Brightness.dark,
    elevation: 0.0,
    backgroundColor: Colors.transparent,
    automaticallyImplyLeading: false,
  );
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: appBar,
      backgroundColor: Constants.primaryColor,
      body: Builder(builder: (BuildContext context) {
        double heightFromWhiteBg =
            size.height - 200.0 - Scaffold.of(context).appBarMaxHeight;
        print(heightFromWhiteBg);

        return Container(
          height: size.height - kToolbarHeight,
          child: Stack(
            children: [
              Container(
                height: 200.0,
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
                        Row(
                          children: List.generate(
                            3,
                            (index) => Container(
                              width: ScreenUtil().setWidth(9.0),
                              height: ScreenUtil().setHeight(9.0),
                              margin: EdgeInsets.only(right: 10.0),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white
                                    .withOpacity(index == 0 ? 1 : 0.56),
                              ),
                            ),
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
                top: 200.0,
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
              Positioned(
                top: 200.0,
                height: heightFromWhiteBg,
                width: size.width,
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: List.generate(
                      3,
                      (index) => Expanded(
                        child: Container(
                          margin:
                              EdgeInsets.only(bottom: index == 2 ? 0 : 10.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Constants.greyColor,
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Constants.greyColor,
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
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
