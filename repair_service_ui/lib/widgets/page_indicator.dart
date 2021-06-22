import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:repair_service_ui/utils/constants.dart';

class PageIndicator extends StatelessWidget {
  final int activePage;
  final bool darkMode;
  PageIndicator({this.activePage, this.darkMode = true});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => Container(
          width: ScreenUtil().setWidth(9.0),
          height: ScreenUtil().setHeight(9.0),
          margin: EdgeInsets.only(right: 10.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: darkMode
                ? (Colors.white
                    .withOpacity(index == (activePage - 1) ? 1 : 0.56))
                : (index == (activePage - 1)
                    ? Constants.primaryColor
                    : Color.fromRGBO(151, 154, 155, 1)),
          ),
        ),
      ),
    );
  }
}
