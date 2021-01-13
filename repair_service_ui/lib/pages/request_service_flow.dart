import 'package:flutter/material.dart';
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
  final PreferredSizeWidget appBar = AppBar(
    brightness: Brightness.dark,
    elevation: 0.0,
    backgroundColor: Colors.transparent,
    automaticallyImplyLeading: false,
  );

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    int current = 0;

    void nextPage() {
      setState(() {
        current += 1;
      });
    }

    void prevPage() {
      setState(() {
        current -= 1;
      });
    }

    List<Widget> pages = [
      HomePageOne(nextPage: nextPage, prevPage: prevPage),
      HomePageTwo(nextPage: nextPage, prevPage: prevPage),
    ];

    return Scaffold(
      appBar: appBar,
      backgroundColor: Constants.primaryColor,
      body: AnimatedSwitcher(
        duration: Duration(milliseconds: 300),
        child: pages[current],
      ),
    );
  }
}
