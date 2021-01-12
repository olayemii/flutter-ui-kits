import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
            ),
            Container(
              height: size.height * 0.8,
              decoration: BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment(0, 1),
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/home-bg.png"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
