import 'package:flutter/material.dart';
import 'package:news_ui/widgets/primary_button.dart';

class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                height: 60.0,
              ),
              Center(
                child: Image.asset(
                  "assets/images/notification.png",
                  width: 300.0,
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              Text(
                "Receive Notifications",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20.0,
                  color: Color.fromRGBO(28, 28, 28, 1),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Be the first to know  about big news, must read  stories and special offers from DailyNews.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  height: 1.8,
                  color: Color.fromRGBO(90, 93, 106, 1),
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              PrimaryButton(
                text: "Notify Me",
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
