import 'package:flutter/material.dart';
import 'package:real_estate_ui/utils/constants.dart';
import 'package:real_estate_ui/utils/static_data.dart';
import 'package:real_estate_ui/widgets/property_card.dart';

class SearchResult extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search Results"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "32 Properties Found",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Constants.blackColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "View with Map",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Color.fromRGBO(255, 136, 0, 1),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              ListView.separated(
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 15.0,
                  );
                },
                itemCount: StaticData.sampleProperties.length,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return PropertyCard(
                    property: StaticData.sampleProperties[index],
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
