import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: SvgPicture.asset(
            "assets/svg/menu.svg",
            width: 12.0,
            height: 12.0,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset(
            "assets/svg/hamburger.svg",
            width: 16.0,
            height: 16.0,
          ),
          onPressed: () {},
        )
      ],
    );
  }
}
