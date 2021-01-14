import 'package:airbnb_redesign_ui/widgets/home_page_one.dart';
import 'package:airbnb_redesign_ui/widgets/home_page_two.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PageController controller = PageController();
  int currentPage = 0;
  @override
  void initState() {
    controller.addListener(() {
      print("changed!");
      print(controller.page);
      setState(() {
        currentPage = controller.page.round();
      });
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
            HomePageOne(
              activePage: currentPage,
            ),
            HomePageTwo(
              activePage: currentPage,
            ),
            HomePageOne(
              activePage: currentPage,
            ),
          ],
        ),
      ),
    );
  }
}
