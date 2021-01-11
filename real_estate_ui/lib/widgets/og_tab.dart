import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OgTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(47.0),
      child: Row(
        children: List.generate(
          3,
          (index) => Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromRGBO(216, 227, 255, 1),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
