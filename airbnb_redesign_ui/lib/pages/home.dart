import 'package:airbnb_redesign_ui/widgets/home_page_structure.dart';
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
            HomePageStructure(
              activePage: currentPage,
              title: "Let’s find Peace with Comfort.",
              imagePath: "assets/images/page1.png",
            ),
            HomePageStructure(
              activePage: currentPage,
              title: "Let’s find Peace with Comfort.",
              imagePath: "assets/images/page2.png",
            ),
            HomePageStructure(
              activePage: currentPage,
              title: "Let’s find Peace with Comfort.",
              imagePath: "assets/images/page1.png",
            ),
          ],
        ),
      ),
    );
  }
}
