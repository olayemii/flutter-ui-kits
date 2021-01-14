import 'package:airbnb_redesign_ui/utils/constants.dart';
import 'package:airbnb_redesign_ui/widgets/home_page_two.dart';
import 'package:airbnb_redesign_ui/widgets/house_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: ScreenUtil().setHeight(60.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              SafeArea(
                child: SizedBox(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset("assets/svg/menu.svg"),
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 20.0,
                      backgroundImage: AssetImage(
                        "assets/images/dp.png",
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Text(
                  "Let’s Find Your\nApartments",
                  style: TextStyle(
                    fontSize: 26.0,
                    height: 1.5,
                    color: Color.fromRGBO(33, 45, 82, 1),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Container(
                  height: ScreenUtil().setHeight(59.0),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(251, 251, 251, 1),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  padding: EdgeInsets.only(
                    left: 16.0,
                    right: 8.0,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search your apartments....",
                            hintStyle: GoogleFonts.inter(
                              color: Color.fromRGBO(153, 163, 196, 1),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: ScreenUtil().setHeight(50.0),
                        width: ScreenUtil().setWidth(50.0),
                        decoration: BoxDecoration(
                          color: Constants.primaryColor,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Icon(
                          FlutterIcons.search1_ant,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Text(
                  "Popular",
                  style: TextStyle(
                    fontSize: 18.0,
                    height: 1.5,
                    color: Color.fromRGBO(33, 45, 82, 1),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: ScreenUtil().setHeight(300.0),
                child: ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 10.0,
                    );
                  },
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return HouseCard();
                  },
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Text(
                  "Trending",
                  style: TextStyle(
                    fontSize: 18.0,
                    height: 1.5,
                    color: Color.fromRGBO(33, 45, 82, 1),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: ScreenUtil().setHeight(300.0),
                child: ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 10.0,
                    );
                  },
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return HouseCard();
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
