import 'package:flutter/material.dart';
import 'package:real_estate_ui/utils/constants.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Container(
                  color: Constants.primaryColor,
                ),
              ),
              Expanded(
                child: Container(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
