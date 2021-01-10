import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:watch_cart_ui/constants.dart';
import 'package:watch_cart_ui/models/product.dart';

class WatchDetails extends StatelessWidget {
  final List<Product> watches = [
    Product(
      name: "Skmei Analog Men’s Watch",
      image: "assets/images/watch-1.png",
      price: 79.99,
      category: "Trending Watch",
      description:
          "Combining functionality with timeless style. Explore the Rolex® collection and find the watch is that was made for you.",
    ),
    Product(
      name: "Skmei Analog Men’s Watch",
      image: "assets/images/watch-2.png",
      price: 79.99,
      category: "Trending Watch",
      description:
          "Combining functionality with timeless style. Explore the Rolex® collection and find the watch is that was made for you.",
    ),
    Product(
      name: "Skmei Analog Men’s Watch",
      image: "assets/images/watch-3.png",
      price: 79.99,
      category: "Trending Watch",
      description:
          "Combining functionality with timeless style. Explore the Rolex® collection and find the watch is that was made for you.",
    ),
    Product(
      name: "Skmei Analog Women’s Watch",
      image: "assets/images/watch-4.png",
      price: 79.99,
      category: "Trending Watch",
      description:
          "Combining functionality with timeless style. Explore the Rolex® collection and find the watch is that was made for you.",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 245, 245, 1),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(),
                        ),
                        Expanded(
                          child: Container(
                            color: Constants.primaryColor,
                          ),
                        )
                      ],
                    ),
                  ),
                  SafeArea(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              icon: SvgPicture.asset(
                                "assets/svg/menu.svg",
                                width: 12.0,
                                height: 12.0,
                              ),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: SvgPicture.asset(
                                "assets/svg/hamburger.svg",
                                width: 16.0,
                                height: 16.0,
                              ),
                              onPressed: () {},
                            )
                          ],
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        Center(
                          child: Container(
                            padding: EdgeInsets.all(24.0),
                            height: MediaQuery.of(context).size.height * 0.38,
                            width: MediaQuery.of(context).size.width * 0.85,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16.0),
                              border: Border.all(
                                color: Colors.grey[300],
                              ),
                            ),
                            child: Image.asset(
                              watches[0].image,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Column(
                            children: [
                              RichText(
                                textAlign: TextAlign.left,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "World",
                                      style: TextStyle(
                                        height: 2.5,
                                        fontSize: 28.0,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(34, 34, 34, 1),
                                      ),
                                    ),
                                    TextSpan(
                                      text: "of luxury",
                                      style: TextStyle(
                                        fontSize: 28.0,
                                        color: Color.fromRGBO(34, 34, 34, 1),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
