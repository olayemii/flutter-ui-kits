import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';

class HouseCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(300.0),
      width: ScreenUtil().setWidth(255.0),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(12.0),
        // color: Color.fromRGBO(255, 255, 255, 0.7),
      ),
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
          )
        ],
      ),
    );
  }
}
