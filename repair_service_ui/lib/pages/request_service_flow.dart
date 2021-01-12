import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:repair_service_ui/utils/constants.dart';

class RequestServiceFlow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Constants.primaryColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
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
                          color:
                              Colors.white.withOpacity(index == 0 ? 1 : 0.56),
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
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
