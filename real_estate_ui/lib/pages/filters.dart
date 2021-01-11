import 'package:flutter/material.dart';
import 'package:real_estate_ui/models/og_tab_item.dart';
import 'package:real_estate_ui/widgets/og_tab.dart';

class Filters extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(height: 80.0),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: OgTab(
                  items: [
                    OgTabItem(
                      title: "Sale",
                    ),
                    OgTabItem(
                      title: "Rent",
                    ),
                    OgTabItem(
                      title: "Sold",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
