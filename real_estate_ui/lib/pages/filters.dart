import 'package:flutter/material.dart';
import 'package:real_estate_ui/models/og_tab_item.dart';
import 'package:real_estate_ui/pages/search_result.dart';
import 'package:real_estate_ui/utils/constants.dart';
import 'package:real_estate_ui/utils/helper.dart';
import 'package:real_estate_ui/widgets/button_group_spaced.dart';
import 'package:real_estate_ui/widgets/input_widget.dart';
import 'package:real_estate_ui/widgets/og_tab.dart';
import 'package:real_estate_ui/widgets/primary_button.dart';

class Filters extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Filters"),
        actions: [
          InkWell(
            onTap: () {},
            child: Container(
              alignment: Alignment.center,
              child: Text("Reset"),
            ),
          ),
          SizedBox(
            width: 10.0,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            children: [
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
                    ButtonGroupSpaced(
                      items: [
                        "Any",
                        "House",
                        "Apartment",
                        "Office",
                        "Commercial",
                        "Swimming Pool",
                        "Gardens"
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      "Bedrooms",
                      style: TextStyle(
                        color: Constants.blackColor,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    OgTab(
                      items: [
                        OgTabItem(
                          title: "Any",
                        ),
                        OgTabItem(
                          title: "1",
                        ),
                        OgTabItem(
                          title: "2",
                        ),
                        OgTabItem(
                          title: "3",
                        ),
                        OgTabItem(
                          title: "4+",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      "Bathrooms",
                      style: TextStyle(
                        color: Constants.blackColor,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    OgTab(
                      items: [
                        OgTabItem(
                          title: "Any",
                        ),
                        OgTabItem(
                          title: "1",
                        ),
                        OgTabItem(
                          title: "2",
                        ),
                        OgTabItem(
                          title: "3",
                        ),
                        OgTabItem(
                          title: "4+",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    PrimaryButton(
                      text: "Apply Filters",
                      onPressed: () {
                        Helper.nextScreen(context, SearchResult());
                      },
                    )
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
