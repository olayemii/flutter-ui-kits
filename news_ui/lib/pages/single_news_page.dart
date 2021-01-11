import 'package:flutter/material.dart';
import 'package:news_ui/utils/static_data.dart';
import 'package:news_ui/widgets/bottom_bar.dart';
import 'package:news_ui/widgets/mini_news_card.dart';
import 'package:news_ui/widgets/nu_appbar.dart';
import 'package:news_ui/widgets/single_news_card.dart';
import 'package:news_ui/widgets/single_news_header.dart';

class SingleNewsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            SingleNewsHeader(),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(
                        height: 30.0,
                      ),
                      Text(
                        "Jacob Blake: Trump visits Kenosha to back police...",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20.0,
                        ),
                      ),
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
