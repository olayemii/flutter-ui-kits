import 'package:airbnb_redesign_ui/widgets/home_page_one.dart';
import 'package:airbnb_redesign_ui/widgets/home_page_two.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PageController controller = PageController();
  @override
  void initState() {
    controller.addListener(() {
      print("changed!");
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: PageView(
          controller: controller,
          children: [
            HomePageOne(),
            HomePageTwo(),
          ],
        ),
      ),
    );
  }
}
