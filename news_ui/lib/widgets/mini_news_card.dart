import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_ui/models/news.dart';
import 'package:news_ui/pages/single_news_page.dart';
import 'package:news_ui/utils/helper.dart';

class MiniNewsCard extends StatelessWidget {
  final News news;
  MiniNewsCard({this.news});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Helper.nextScreen(context, SingleNewsPage());
      },
      child: Container(
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          border: Border.all(
            color: Color.fromRGBO(233, 233, 233, 1),
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          children: [
            Container(
              height: ScreenUtil().setHeight(125.0),
              width: ScreenUtil().setWidth(125.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromRGBO(233, 233, 233, 1),
                ),
                image: DecorationImage(
                  image: AssetImage(
                    this.news.imagePath,
                  ),
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            SizedBox(
              width: 30.0,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    this.news.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    this.news.content,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Color.fromRGBO(139, 144, 165, 1),
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    children: [
                      Text(
                        this.news.timePosted,
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      Text(
                        " | ",
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      Text(
                        this.news.category,
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Color.fromRGBO(251, 89, 84, 1),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
