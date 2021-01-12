import 'package:flutter/material.dart';
import 'package:repair_service_ui/widgets/input_widget.dart';
import 'package:repair_service_ui/widgets/primary_button.dart';

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          InputWidget(),
          SizedBox(
            height: 15.0,
          ),
          InputWidget(),
          SizedBox(
            height: 25.0,
          ),
          PrimaryButton(
            text: "Search Now",
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
