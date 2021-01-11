import 'package:flutter/material.dart';
import 'package:news_ui/utils/constants.dart';
import 'package:news_ui/utils/static_data.dart';
import 'package:news_ui/widgets/bottom_bar.dart';
import 'package:news_ui/widgets/mini_news_card.dart';
import 'package:news_ui/widgets/nu_appbar.dart';
import 'package:news_ui/widgets/single_news_card.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBar(
        activePage: BottomBarPages.Home,
      ),
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
                      ListView.separated(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: StaticData.news.length,
                        itemBuilder: (BuildContext context, int index) {
                          return MiniNewsCard(news: StaticData.news[index]);
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            height: 10.0,
                          );
                        },
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
