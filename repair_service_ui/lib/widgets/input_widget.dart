import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InputWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(59.0),
      decoration: BoxDecoration(
        color: Color.fromRGBO(247, 247, 249, 1),
      ),
    );
  }
}
