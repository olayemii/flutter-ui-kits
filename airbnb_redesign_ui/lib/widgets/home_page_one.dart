import 'package:flutter/material.dart';

class HomePageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Container(
      color: Colors.amber,
      height: _size.height,
      child: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.green,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(
                  "assets/images/page1.png",
                ),
              )),
            ),
          ),
          Expanded(
            child: SizedBox(),
          ),
        ],
      ),
    );
  }
}
