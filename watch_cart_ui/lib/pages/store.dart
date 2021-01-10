import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:watch_cart_ui/constants.dart';
import 'package:watch_cart_ui/models/product.dart';

class Store extends StatelessWidget {
  final List<Product> watches = [
    Product(
      brand: "Skmei Analog",
      name: "Men’s Watch",
      image: "assets/images/watch-1.png",
      price: 79.99,
      category: "Trending Watch",
      description:
          "Combining functionality with timeless style. Explore the Rolex® collection and find the watch is that was made for you.",
    ),
    Product(
      brand: "Skmei Analog",
      name: "Men’s Watch",
      image: "assets/images/watch-2.png",
      price: 79.99,
      category: "Trending Watch",
      description:
          "Combining functionality with timeless style. Explore the Rolex® collection and find the watch is that was made for you.",
    ),
    Product(
      brand: "Skmei Analog",
      name: "Men’s Watch",
      image: "assets/images/watch-3.png",
      price: 79.99,
      category: "Trending Watch",
      description:
          "Combining functionality with timeless style. Explore the Rolex® collection and find the watch is that was made for you.",
    ),
    Product(
      brand: "Skmei Analog",
      name: "Women’s Watch",
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
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
                  height: 50.0,
                ),
                RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "World\n",
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
                SizedBox(
                  height: 50.0,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        margin: EdgeInsets.only(right: 15.0),
                        width: 60.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(
                            color: Color.fromRGBO(230, 230, 230, 1),
                          ),
                        ),
                        child: Icon(FlutterIcons.search_fea),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        margin: EdgeInsets.only(right: 15.0),
                        width: 60.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(
                            color: Color.fromRGBO(230, 230, 230, 1),
                          ),
                        ),
                        child: Icon(FlutterIcons.md_options_ion),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        margin: EdgeInsets.only(right: 15.0),
                        width: 120.0,
                        height: 60.0,
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        decoration: BoxDecoration(
                          color: Constants.primaryColor,
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(
                            color: Color.fromRGBO(230, 230, 230, 1),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Cart",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 14.0,
                              ),
                            ),
                            Container(
                              width: 30.0,
                              height: 30.0,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Text(
                                  "2",
                                  style: TextStyle(
                                    color: Constants.primaryColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14.0,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 30.0,
                ),
                Flexible(
                  child: StaggeredGridView.countBuilder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    crossAxisCount: 4,
                    itemCount: watches.length,
                    itemBuilder: (BuildContext context, int index) => Container(
                      padding: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            child: Image.asset(watches[index].image),
                          ),
                          Text(
                            watches[index].brand,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                          SizedBox(
                            height: 3.0,
                          ),
                          Text(
                            watches[index].name,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          )
                        ],
                      ),
                    ),
                    staggeredTileBuilder: (int index) =>
                        new StaggeredTile.count(2, index.isEven ? 3 : 2),
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
