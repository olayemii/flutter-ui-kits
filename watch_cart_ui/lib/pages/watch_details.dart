import 'package:flutter/material.dart';
import 'package:watch_cart_ui/constants.dart';
import 'package:watch_cart_ui/models/product.dart';
import 'package:watch_cart_ui/widgets/main_app_bar.dart';
import 'package:watch_cart_ui/widgets/watch_detail_footer.dart';
import 'package:watch_cart_ui/widgets/watch_detail_image.dart';

class WatchDetails extends StatefulWidget {
  final Product watch;
  final String tag;

  WatchDetails({this.watch, this.tag});

  @override
  _WatchDetailsState createState() => _WatchDetailsState();
}

class _WatchDetailsState extends State<WatchDetails> {
  int cartItemCount = 1;

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
                        MainAppBar(),
                        SizedBox(
                          height: 30.0,
                        ),
                        WatchDetailImage(
                          image: this.widget.watch.image,
                          tag: this.widget.tag,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                textAlign: TextAlign.left,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: this.widget.watch.brand,
                                      style: TextStyle(
                                        height: 2.5,
                                        fontSize: 28.0,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(34, 34, 34, 1),
                                      ),
                                    ),
                                    TextSpan(
                                      text: " " +
                                          this.widget.watch.name +
                                          " - " +
                                          this.widget.watch.model,
                                      style: TextStyle(
                                        fontSize: 28.0,
                                        color: Color.fromRGBO(34, 34, 34, 1),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                this.widget.watch.category,
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.grey,
                                ),
                              ),
                              Container(
                                height: 90.0,
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right: 15.0),
                                      height: 60.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        border: Border.all(
                                          color:
                                              Color.fromRGBO(230, 230, 230, 1),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                cartItemCount += 1;
                                              });
                                            },
                                            child: Container(
                                              alignment: Alignment.center,
                                              height: 90.0,
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                horizontal: 16.0,
                                              ),
                                              child: Text(
                                                "+",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 24.0,
                                                  color: Color.fromRGBO(
                                                      34, 34, 34, 1),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 16.0,
                                            ),
                                            child: Text(
                                              "${this.cartItemCount}",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 24.0,
                                                color: Color.fromRGBO(
                                                    34, 34, 34, 1),
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                cartItemCount =
                                                    cartItemCount > 2
                                                        ? cartItemCount - 1
                                                        : 1;
                                              });
                                            },
                                            child: Container(
                                              alignment: Alignment.center,
                                              height: 90.0,
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                horizontal: 16.0,
                                              ),
                                              child: Text(
                                                "-",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 24.0,
                                                  color: Color.fromRGBO(
                                                      34, 34, 34, 1),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text(
                                      "\$${(this.widget.watch.price * this.cartItemCount).toStringAsFixed(2)}",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 24.0,
                                        color: Color.fromRGBO(34, 34, 34, 1),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Text(
                                this.widget.watch.description,
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.grey,
                                  height: 1.40,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              WatchDetailFooter(),
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
