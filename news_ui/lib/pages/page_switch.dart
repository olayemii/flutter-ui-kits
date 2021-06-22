import 'package:flutter/material.dart';
import 'package:news_ui/pages/category_selection.dart';
import 'package:news_ui/pages/home.dart';
import 'package:news_ui/widgets/bottom_bar.dart';
import 'package:news_ui/widgets/nu_appbar.dart';

class PageSwitch extends StatefulWidget {
  @override
  _PageSwitchState createState() => _PageSwitchState();
}

class _PageSwitchState extends State<PageSwitch> {
  int currentIndex = 0;

  void changeCurrentIndex(int newIndex) {
    setState(() {
      currentIndex = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBar(
        changeIndex: changeCurrentIndex,
        currentIndex: currentIndex,
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              NuAppbar(),
              Expanded(
                child: AnimatedSwitcher(
                  duration: Duration(milliseconds: 300),
                  child: [
                    Home(),
                    CategorySelection(),
                    SizedBox(),
                    SizedBox(),
                    SizedBox(),
                  ][currentIndex],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
