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
    double heightFromWhiteBg =
        size.height - 200.0 - appBar.preferredSize.height;
    return Scaffold(
      appBar: appBar,
      backgroundColor: Constants.primaryColor,
      body: Container(
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
              top: 180.0,
              height: size.height - 200.0 - kToolbarHeight,
              width: size.width,
              child: Container(
                color: Colors.green,
                height: size.height - 200.0,
                // child: GridView.builder(
                //   physics: NeverScrollableScrollPhysics(),
                //   shrinkWrap: true,
                //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                //     crossAxisCount: 2,
                //     crossAxisSpacing: 10.0,
                //     mainAxisSpacing: 10.0,
                //   ),
                //   itemBuilder: (BuildContext context, int index) {
                //     return Container(
                //       color: Colors.amber,
                //       height: 100.0,
                //     );
                //   },
                //   itemCount: 6,
                // ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: List.generate(
                    3,
                    (index) => Expanded(
                      child: Container(
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                color: [
                                  Colors.amber,
                                  Colors.green,
                                  Colors.red
                                ][index],
                              ),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Expanded(
                              child: Container(
                                color: Colors.amber,
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
      ),
    );
  }
}
