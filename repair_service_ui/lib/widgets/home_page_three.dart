import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:repair_service_ui/utils/constants.dart';
import 'package:repair_service_ui/widgets/page_indicator.dart';

class HomePageThree extends StatefulWidget {
  final Function nextPage;
  final Function prevPage;

  HomePageThree({this.nextPage, this.prevPage});

  @override
  _HomePageThreeState createState() => _HomePageThreeState();
}

class _HomePageThreeState extends State<HomePageThree> {
  final List options = [
    {
      "name": "Talk to Support Now",
      "icon": "assets/svg/phone.svg",
      "key": "phone",
      "description": "Provide your phone number and we will call you"
    },
    {
      "name": "Chat",
      "icon": "assets/svg/chat.svg",
      "key": "chat",
      "description": "Start a chat session with us",
    },
    {
      "name": "Bring in for repair",
      "icon": "assets/svg/repair.svg",
      "key": "repair",
      "description": "Find an authorized service provider",
    },
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
    return Container(
      width: size.width,
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 20.0,
          ),
          PageIndicator(
            activePage: 3,
            darkMode: false,
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "How would you like to get help?",
            style: TextStyle(
              color: Constants.primaryColor,
              fontSize: 28.0,
              fontWeight: FontWeight.w600,
              height: 1.2,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 24.0),
              child: Column(
                children: options.map((e) {
                  int index = options.indexOf(e);
                  return serviceCard(options[index], active, setActiveFunc);
                }).toList(),
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
        margin: EdgeInsets.only(bottom: 15.0),
        duration: Duration(milliseconds: 300),
        decoration: BoxDecoration(
          color: isActive ? Colors.black : Constants.greyColor,
          borderRadius: BorderRadius.circular(12.0),
        ),
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: SvgPicture.asset(
                item["icon"],
                color: isActive ? Colors.white : null,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item["name"],
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20.0,
                    color: isActive
                        ? Colors.white
                        : Color.fromRGBO(20, 20, 20, 0.96),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  item["description"],
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12.0,
                    color: isActive
                        ? Colors.white
                        : Color.fromRGBO(20, 20, 20, 0.96),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ),
  );
}
