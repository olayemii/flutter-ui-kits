import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:repair_service_ui/utils/constants.dart';
import 'package:repair_service_ui/widgets/page_indicator.dart';

class HomePageTwo extends StatefulWidget {
  final Function nextPage;
  final Function prevPage;

  HomePageTwo({this.nextPage, this.prevPage});

  @override
  _HomePageTwoState createState() => _HomePageTwoState();
}

class _HomePageTwoState extends State<HomePageTwo> {
  final List options = [
    [
      {
        "name": "Mobile",
        "icon": "assets/svg/mobile.svg",
        "key": "mobile",
      },
      {
        "name": "Tablet",
        "icon": "assets/svg/tablet.svg",
        "key": "tablet",
      },
    ],
    // Second
    [
      {
        "name": "Laptop",
        "icon": "assets/svg/laptop.svg",
        "key": "laptop",
      },
      {
        "name": "Desktop",
        "icon": "assets/svg/desktop.svg",
        "key": "desktop",
      },
    ],
    // Third
    [
      {
        "name": "Watch",
        "icon": "assets/svg/watch.svg",
        "key": "watch",
      },
      {
        "name": "Headphone",
        "icon": "assets/svg/headphone.svg",
        "key": "headphone",
      },
    ],
  ];

  String active = "";

  void setActiveFunc(String key) {
    setState(() {
      active = key;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double heightFromWhiteBg =
        size.height - 200.0 - Scaffold.of(context).appBarMaxHeight;
    return Container(
      width: size.width,
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          PageIndicator(
            activePage: 2,
            darkMode: false,
          ),
          Text(
            "What’s happening with your laptop ? ",
            style: TextStyle(
              color: Constants.primaryColor,
              fontSize: 28.0,
              fontWeight: FontWeight.w600,
              height: 1.2,
            ),
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: List.generate(
                3,
                (index) => Expanded(
                  child: Container(
                    margin: EdgeInsets.only(bottom: index == 2 ? 0 : 10.0),
                    child: Row(
                      children: [
                        serviceCard(options[index][0], active, setActiveFunc),
                        SizedBox(
                          width: 10.0,
                        ),
                        serviceCard(options[index][1], active, setActiveFunc),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget serviceCard(Map item, String active, Function setActive) {
  bool isActive = active == item["key"];
  return Expanded(
    child: GestureDetector(
      onTap: () {
        setActive(item["key"]);
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        decoration: BoxDecoration(
          color: isActive ? Colors.black : Constants.greyColor,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              item["icon"],
              color: isActive ? Colors.white : null,
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              item["name"],
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16.0,
                  color: isActive
                      ? Colors.white
                      : Color.fromRGBO(20, 20, 20, 0.96)),
            )
          ],
        ),
      ),
    ),
  );
}
