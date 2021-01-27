import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:flutter_screenutil/screenutil.dart';
=======
import 'package:flutter_screenutil/flutter_screenutil.dart';
>>>>>>> bd39d758e17fd94402b4af15c633b6af7f5bfcf2
import 'package:laundry_app_ui/utils/constants.dart';

class InputWidget extends StatelessWidget {
  final String hintText;
  final IconData prefixIcon;
  final double height;
  final String topLabel;
  final bool obscureText;
<<<<<<< HEAD
  InputWidget(
      {this.hintText,
      this.prefixIcon,
      this.height = 48.0,
      this.topLabel = "",
      this.obscureText = false});
=======

  InputWidget({
    this.hintText,
    this.prefixIcon,
    this.height = 48.0,
    this.topLabel = "",
    this.obscureText = false,
  });
>>>>>>> bd39d758e17fd94402b4af15c633b6af7f5bfcf2
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
<<<<<<< HEAD
        Text(topLabel),
        SizedBox(
          height: 5.0,
        ),
=======
        Text(this.topLabel),
        SizedBox(height: 5.0),
>>>>>>> bd39d758e17fd94402b4af15c633b6af7f5bfcf2
        Container(
          height: ScreenUtil().setHeight(height),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: TextFormField(
<<<<<<< HEAD
            obscureText: obscureText,
            decoration: InputDecoration(
              prefixIcon: this.prefixIcon == null
                  ? null
=======
            obscureText: this.obscureText,
            decoration: InputDecoration(
              prefixIcon: this.prefixIcon == null
                  ? this.prefixIcon
>>>>>>> bd39d758e17fd94402b4af15c633b6af7f5bfcf2
                  : Icon(
                      this.prefixIcon,
                      color: Color.fromRGBO(105, 108, 121, 1),
                    ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromRGBO(74, 77, 84, 0.2),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Constants.primaryColor,
                ),
              ),
              hintText: this.hintText,
              hintStyle: TextStyle(
                fontSize: 14.0,
                color: Color.fromRGBO(105, 108, 121, 0.7),
              ),
            ),
          ),
<<<<<<< HEAD
        ),
=======
        )
>>>>>>> bd39d758e17fd94402b4af15c633b6af7f5bfcf2
      ],
    );
  }
}
