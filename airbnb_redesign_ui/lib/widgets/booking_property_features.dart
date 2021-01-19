import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookingPropertyFeatures extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      padding: EdgeInsets.symmetric(vertical: 20.0),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(
          0.3,
        ),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        children: [
          item("Room", "01"),
          item("Adult", "02"),
          item("Child", "0"),
        ],
      ),
    );
  }
}

Widget item(String title, String count) {
  return Expanded(
    child: Container(
      decoration: BoxDecoration(
        border: Border(
          right: BorderSide(
            color: Color.fromRGBO(138, 150, 190, 0.2),
          ),
        ),
      ),
      child: Column(
        children: [
          Text(
            title,
            style: GoogleFonts.inter(),
          ),
          Text(
            count,
            style: GoogleFonts.inter(),
          ),
        ],
      ),
    ),
  );
}
