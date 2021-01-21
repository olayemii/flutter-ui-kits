import 'package:airbnb_redesign_ui/widgets/home_page_template.dart';
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
          // Since all pages follow same pattern, let's make a template for them
          children: [
            HomePageTemplate(
              activePage: currentPage,
              title: "Let's Find Peace with Comfort",
              imagePath: "assets/images/page1.png",
            ),
            HomePageTemplate(
              activePage: currentPage,
              title: "Let's Find Peace with Comfort",
              imagePath: "assets/images/page2.png",
            ),
            HomePageTemplate(
              activePage: currentPage,
              title: "Let's Find Peace with Comfort",
              imagePath: "assets/images/page1.png",
            ),
          ],
        ),
      ),
    );
  }
}
