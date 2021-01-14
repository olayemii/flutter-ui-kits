import 'package:airbnb_redesign_ui/widgets/home_page_one.dart';
import 'package:airbnb_redesign_ui/widgets/home_page_two.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: PageView(
          children: [
            HomePageOne(),
            HomePageTwo(),
          ],
        ),
      ),
    );
  }
}
