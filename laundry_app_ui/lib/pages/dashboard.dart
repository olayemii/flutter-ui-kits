import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ionicons/ionicons.dart';
import 'package:laundry_app_ui/utils/constants.dart';
import 'package:laundry_app_ui/widgets/latest_orders.dart';
import 'package:laundry_app_ui/widgets/location_slider.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  // Track active index
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Constants.scaffoldBackgroundColor,
        buttonBackgroundColor: Constants.primaryColor,
        items: [
          Icon(
            Ionicons.home_outline,
            size: 30.0,
            color: activeIndex == 0 ? Colors.white : const Color(0xFFC8C9CB),
          ),
          Icon(
            Ionicons.flag_outline,
            size: 30.0,
            color: activeIndex == 1 ? Colors.white : const Color(0xFFC8C9CB),
          ),
          Icon(
            Ionicons.add_outline,
            size: 30.0,
            color: activeIndex == 2 ? Colors.white : const Color(0xFFC8C9CB),
          ),
          Icon(
            Ionicons.heart,
            size: 30.0,
            color: activeIndex == 3 ? Colors.white : const Color(0xFFC8C9CB),
          ),
          Icon(
            Ionicons.settings,
            size: 30.0,
            color: activeIndex == 4 ? Colors.white : const Color(0xFFC8C9CB),
          ),
        ],
        onTap: (index) {
          setState(() {
            activeIndex = index;
          });
        },
      ),
      backgroundColor: Constants.primaryColor,
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            right: 0.0,
            top: -20.0,
            child: Opacity(
              opacity: 0.3,
              child: Image.asset(
                "assets/images/washing_machine_illustration.png",
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: kToolbarHeight,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Ionicons.arrow_back_outline,
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Welcome Back,\n",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline6
                                      ?.copyWith(
                                        color: Colors.white,
                                      ),
                                ),
                                TextSpan(
                                  text: "FlutterPanda!",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline6
                                      ?.copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                      ),
                                )
                              ],
                            ),
                          ),
                          Image.asset(
                            "assets/images/dp.png",
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50.0,
                ),
                Container(
                  width: double.infinity,
                  constraints: BoxConstraints(
                    minHeight: MediaQuery.of(context).size.height - 200.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    ),
                    color: Constants.scaffoldBackgroundColor,
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 24.0,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 24.0,
                        ),
                        child: Text(
                          "New Locations",
                          style: TextStyle(
                            color: Color.fromRGBO(19, 22, 33, 1),
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                      const SizedBox(height: 7.0),
                      SizedBox(
                        height: ScreenUtil().setHeight(100.0),
                        child: Center(
                          // lets make a widget for the cards
                          child: LocationSlider(),
                        ),
                      ),
                      LatestOrders(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
