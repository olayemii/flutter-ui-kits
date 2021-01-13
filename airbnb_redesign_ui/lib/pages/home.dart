import 'package:airbnb_redesign_ui/widgets/home_page_one.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              HomePageOne(),
            ],
          ),
        ),
      ),
    );
  }
}
