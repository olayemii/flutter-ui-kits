import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundry_app_ui/utils/constants.dart';

enum ButtonType { PRIMARY, PLAIN }

class AppButton extends StatelessWidget {
<<<<<<< HEAD
  // Our primary button widget [to be reused]
  final ButtonType type;
  final Function onPressed;
  final String text;

  AppButton({this.text, this.onPressed, this.type});
=======
  final ButtonType type;
  final VoidCallback onPressed;
  final String text;

  AppButton({this.type, this.onPressed, this.text});
>>>>>>> bd39d758e17fd94402b4af15c633b6af7f5bfcf2

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: this.onPressed,
      child: Container(
        width: double.infinity,
        height: ScreenUtil().setHeight(48.0),
        decoration: BoxDecoration(
          color: getButtonColor(type),
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(169, 176, 185, 0.42),
              spreadRadius: 0,
              blurRadius: 8.0,
              offset: Offset(0, 2),
            )
          ],
        ),
        child: Center(
          child: Text(
            this.text,
            style: GoogleFonts.roboto(
              color: getTextColor(type),
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}

Color getButtonColor(ButtonType type) {
  switch (type) {
<<<<<<< HEAD
    case ButtonType.PLAIN:
      return Colors.white;
    case ButtonType.PRIMARY:
      return Constants.primaryColor;
    default:
      return Colors.white;
=======
    case ButtonType.PRIMARY:
      return Constants.primaryColor;
    case ButtonType.PLAIN:
      return Colors.white;
    default:
      return Constants.primaryColor;
>>>>>>> bd39d758e17fd94402b4af15c633b6af7f5bfcf2
  }
}

Color getTextColor(ButtonType type) {
  switch (type) {
<<<<<<< HEAD
    case ButtonType.PRIMARY:
      return Colors.white;
    case ButtonType.PLAIN:
      return Constants.primaryColor;
=======
    case ButtonType.PLAIN:
      return Constants.primaryColor;
    case ButtonType.PRIMARY:
      return Colors.white;
>>>>>>> bd39d758e17fd94402b4af15c633b6af7f5bfcf2
    default:
      return Colors.white;
  }
}
