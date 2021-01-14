import 'package:airbnb_redesign_ui/widgets/input_widget.dart';
import 'package:flutter/material.dart';

class RegisterForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Email",
              style: TextStyle(
                fontSize: 14.0,
                color: Color.fromRGBO(33, 45, 82, 1),
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            InputWidget(),
          ],
        ),
      ),
    );
  }
}
