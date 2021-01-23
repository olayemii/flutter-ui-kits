import 'package:e_learning_ui_one/models/topic.dart';
import 'package:e_learning_ui_one/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/screenutil.dart';

class TopicList extends StatelessWidget {
  final List<Topic> topics;
  TopicList({this.topics});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: topics.length,
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: 20.0,
          );
        },
        itemBuilder: (BuildContext context, int index) {
          return Row(
            children: [
              Container(
                clipBehavior: Clip.hardEdge,
                height: ScreenUtil().setHeight(52.0),
                width: ScreenUtil().setWidth(52.0),
                decoration: BoxDecoration(
                  color: index == 0
                      ? Constants.secondaryColor
                      : Color.fromRGBO(225, 234, 255, 1),
                  borderRadius: BorderRadius.circular(14.0),
                ),
                child: Icon(
                  FlutterIcons.play_fou,
                  color: index == 0 ? Colors.white : Constants.secondaryColor,
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      topics[index].title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Color.fromRGBO(13, 19, 51, 1),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      topics[index].description,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Color.fromRGBO(13, 19, 51, 0.68),
                      ),
                    ),
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
