import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:language_learning_ui/constants.dart';

class TopicCard extends StatelessWidget {
  final String topic;
  final String points;
  final String time;
  final String image;
  final Color color;
  final List<BoxShadow> boxShadow;
  TopicCard({
    this.time,
    this.topic,
    this.points,
    this.image,
    this.color,
    this.boxShadow,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(136.0),
      width: ScreenUtil().setHeight(246.0),
      decoration: BoxDecoration(
        color: this.color,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: this.boxShadow,
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 30.0,
                        height: 30.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Text(
                            this.points,
                            style: TextStyle(
                              color: Constants.primaryTextColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        "Points",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 14.0,
                        ),
                      )
                    ],
                  ),
                  Text(
                    this.topic,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 16.0,
                    ),
                  ),
                  Text(
                    this.time,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    this.image,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
