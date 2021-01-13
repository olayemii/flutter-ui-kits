import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:repair_service_ui/utils/constants.dart';
import 'package:repair_service_ui/widgets/home_page_one.dart';
import 'package:repair_service_ui/widgets/home_page_two.dart';

class RequestServiceFlow extends StatefulWidget {
  @override
  _RequestServiceFlowState createState() => _RequestServiceFlowState();
}

class _RequestServiceFlowState extends State<RequestServiceFlow> {
  int current = 0;

  void nextPage() {
    print("Update Current");
    setState(() {
      current += 1;
    });
  }

  void prevPage() {
    setState(() {
      current -= 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      HomePageOne(nextPage: nextPage, prevPage: prevPage),
      HomePageTwo(nextPage: nextPage, prevPage: prevPage),
    ];
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        // automaticallyImplyLeading: false,
        leading: current > 0
            ? GestureDetector(
                onTap: () {
                  this.prevPage();
                },
                child: Icon(FlutterIcons.arrow_left_ent),
              )
            : null,
        iconTheme: IconThemeData(
          color: Constants.primaryColor,
        ),
      ),
      backgroundColor: current == 0 ? Constants.primaryColor : Colors.white,
      body: AnimatedSwitcher(
        duration: Duration(milliseconds: 300),
        child: pages[current],
      ),
    );
  }
}
