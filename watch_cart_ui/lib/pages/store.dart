import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:watch_cart_ui/models/product.dart';
import 'package:watch_cart_ui/pages/watch_details.dart';
import 'package:watch_cart_ui/widgets/home_options.dart';
import 'package:watch_cart_ui/widgets/main_app_bar.dart';

class Store extends StatelessWidget {
  final List<Product> watches = [
    Product(
      brand: "Skmei Analog",
      name: "Men’s Watch",
      image: "assets/images/watch-1.png",
      model: "AM03",
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
      model: "AM03",
      description:
          "Combining functionality with timeless style. Explore the Rolex® collection and find the watch is that was made for you.",
    ),
    Product(
      brand: "Skmei Analog",
      name: "Men’s Watch",
      image: "assets/images/watch-3.png",
      model: "AM03",
      price: 79.99,
      category: "Trending Watch",
      description:
          "Combining functionality with timeless style. Explore the Rolex® collection and find the watch is that was made for you.",
    ),
    Product(
      brand: "Skmei Analog",
      name: "Women’s Watch",
      image: "assets/images/watch-4.png",
      model: "AM03",
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
                MainAppBar(),
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
                HomeOptions(),
                SizedBox(
                  height: 30.0,
                ),
                Flexible(
                  child: StaggeredGridView.countBuilder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    crossAxisCount: 4,
                    itemCount: watches.length,
                    itemBuilder: (BuildContext context, int index) => ZoomIn(
                      child: Hero(
                        tag: "watch-$index",
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return WatchDetails(
                                    watch: this.watches[index],
                                    tag: "watch-$index",
                                  );
                                },
                              ),
                            );
                          },
                          child: Container(
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
                        ),
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
