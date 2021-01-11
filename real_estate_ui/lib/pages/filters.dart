import 'package:flutter/material.dart';
import 'package:real_estate_ui/models/og_tab_item.dart';
import 'package:real_estate_ui/utils/constants.dart';
import 'package:real_estate_ui/widgets/input_widget.dart';
import 'package:real_estate_ui/widgets/og_tab.dart';

class Filters extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
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
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Property Area",
                      style: TextStyle(
                        color: Constants.blackColor,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    InputWidget(
                      hintText: "Find more properties in nearby area",
                      prefixIcon: null,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      "Property Type",
                      style: TextStyle(
                        color: Constants.blackColor,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
