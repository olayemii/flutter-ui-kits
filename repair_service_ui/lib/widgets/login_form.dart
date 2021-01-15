import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:repair_service_ui/pages/request_service_flow.dart';
import 'package:repair_service_ui/utils/helper.dart';
import 'package:repair_service_ui/widgets/input_widget.dart';
import 'package:repair_service_ui/widgets/primary_button.dart';

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          InputWidget(
            hintText: "Email",
            suffixIcon: FlutterIcons.mail_oct,
          ),
          SizedBox(
            height: 15.0,
          ),
          InputWidget(
            hintText: "Password",
            obscureText: true,
          ),
          SizedBox(
            height: 25.0,
          ),
          PrimaryButton(
            text: "Search Now",
            onPressed: () {
              Helper.nextPage(context, RequestServiceFlow());
            },
          )
        ],
      ),
    );
  }
}
