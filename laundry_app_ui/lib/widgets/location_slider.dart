import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laundry_app_ui/models/location.dart';

class LocationSlider extends StatelessWidget {
<<<<<<< HEAD
  final List<Location> locations = [
    Location(
      address: "Kings Street 20",
      color: Color.fromRGBO(89, 69, 199, 1),
      state: "Bucharest",
      imagePath: "assets/images/house1.png",
    ),
    Location(
      address: "Victory Square 18",
      color: Color.fromRGBO(237, 116, 41, 1),
      state: "Bucharest",
      imagePath: "assets/images/house2.png",
    )
  ];
  @override
  Widget build(BuildContext context) {
=======
  @override
  Widget build(BuildContext context) {
    // Model to represent each card

    // Make a list to represent each card
    List<Location> locations = [
      Location(
        address: "Kings Street 20",
        color: Color.fromRGBO(89, 69, 199, 1),
        state: "Bucharest",
        imagePath: "assets/images/house1.png",
      ),
      Location(
        address: "Victory Square 18",
        color: Color.fromRGBO(237, 116, 41, 1),
        state: "Bucharest",
        imagePath: "assets/images/house2.png",
      )
    ];
>>>>>>> bd39d758e17fd94402b4af15c633b6af7f5bfcf2
    return Container(
      height: ScreenUtil().setHeight(90.0),
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
<<<<<<< HEAD
            onTap: () {
              print(locations[index]);
            },
=======
            onTap: () {},
>>>>>>> bd39d758e17fd94402b4af15c633b6af7f5bfcf2
            child: Container(
              width: ScreenUtil().setWidth(200.0),
              decoration: BoxDecoration(
                color: locations[index].color,
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(169, 176, 185, 0.42),
                    spreadRadius: 0,
                    blurRadius: 8.0,
                    offset: Offset(0, 2),
<<<<<<< HEAD
                  )
=======
                  ),
>>>>>>> bd39d758e17fd94402b4af15c633b6af7f5bfcf2
                ],
              ),
              padding: EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal: 12.0,
              ),
              child: Stack(
                overflow: Overflow.visible,
                children: [
                  Positioned(
                    right: -16.0,
                    top: 0.0,
                    child: Opacity(
                      opacity: 0.69,
                      child: Image.asset(
                        locations[index].imagePath,
<<<<<<< HEAD
                        fit: BoxFit.fill,
=======
>>>>>>> bd39d758e17fd94402b4af15c633b6af7f5bfcf2
                      ),
                    ),
                  ),
                  RichText(
<<<<<<< HEAD
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
=======
>>>>>>> bd39d758e17fd94402b4af15c633b6af7f5bfcf2
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "${locations[index].address},\n",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            height: 1.5,
                            fontSize: 16.0,
                          ),
                        ),
                        TextSpan(
                          text: locations[index].state,
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
<<<<<<< HEAD
                        ),
                      ],
                    ),
                  ),
=======
                        )
                      ],
                    ),
                  )
>>>>>>> bd39d758e17fd94402b4af15c633b6af7f5bfcf2
                ],
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: 15.0,
          );
        },
        itemCount: locations.length,
      ),
    );
  }
}
