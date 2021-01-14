import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class PropertyFeatures extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          item(),
          SizedBox(
            width: 10.0,
          ),
          item(),
          SizedBox(
            width: 10.0,
          ),
          item(),
        ],
      ),
    );
  }
}

Widget item() {
  return Expanded(
    child: Container(
      height: 40.0,
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6.0),
      ),
      child: Row(
        children: [
          Icon(
            FlutterIcons.people_mdi,
            size: 16.0,
            color: Color(0xFF404A6A),
          ),
          SizedBox(
            width: 5.0,
          ),
          Text(
            "2 Adults",
            style: GoogleFonts.inter(
              fontSize: 12.0,
              fontWeight: FontWeight.w600,
              color: Color(0xFF404A6A),
            ),
          )
        ],
      ),
    ),
  );
}
