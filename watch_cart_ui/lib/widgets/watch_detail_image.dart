import 'package:flutter/material.dart';

class WatchDetailImage extends StatelessWidget {
  final String image;
  final String tag;
  WatchDetailImage({this.image, this.tag});
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: this.tag,
      child: Center(
        child: Container(
          padding: EdgeInsets.all(24.0),
          height: MediaQuery.of(context).size.height * 0.38,
          width: MediaQuery.of(context).size.width * 0.85,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.0),
            border: Border.all(
              color: Colors.grey[300],
            ),
          ),
          child: Image.asset(
            this.image,
          ),
        ),
      ),
    );
  }
}
