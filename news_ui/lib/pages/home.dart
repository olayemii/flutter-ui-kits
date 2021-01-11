import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_ui/utils/static_data.dart';
import 'package:news_ui/widgets/bottom_bar.dart';
import 'package:news_ui/widgets/nu_appbar.dart';
import 'package:news_ui/widgets/single_news_card.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBar(),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            NuAppbar(),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(
                        height: 20.0,
                      ),
                      SingleNewsCard(),
                      SizedBox(
                        height: 40.0,
                      ),
                      Container(
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
                                    "assets/images/paris.png",
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
                                    "Who is Paris Hilton Really?",
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
                                    "The heiress and proto-influencer says that she spent nearly two decades playing a character. Now she’s ready to be herself.",
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
                                        "20 min ago",
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
                                        "Politics",
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
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
