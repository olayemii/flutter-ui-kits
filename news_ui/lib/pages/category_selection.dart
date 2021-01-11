import 'package:flutter/material.dart';
import 'package:news_ui/utils/static_data.dart';
import 'package:news_ui/widgets/bottom_bar.dart';
import 'package:news_ui/widgets/nu_appbar.dart';

class CategorySelection extends StatelessWidget {
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
                      Text(
                        "Select your \nfavorite section.",
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 8.0,
                          crossAxisSpacing: 8.0,
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(245, 246, 250, 1),
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                StaticData.categories[index].icon,
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  StaticData.categories[index].title,
                                )
                              ],
                            ),
                          );
                        },
                        itemCount: StaticData.categories.length,
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
