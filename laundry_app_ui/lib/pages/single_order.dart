import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
<<<<<<< HEAD
import 'package:laundry_app_ui/models/order.dart';
import 'package:laundry_app_ui/utils/constants.dart';
import 'package:laundry_app_ui/utils/static_data.dart';
=======
import 'package:laundry_app_ui/utils/constants.dart';
>>>>>>> bd39d758e17fd94402b4af15c633b6af7f5bfcf2

class SingleOrder extends StatefulWidget {
  @override
  _SingleOrderState createState() => _SingleOrderState();
}

class _SingleOrderState extends State<SingleOrder> {
<<<<<<< HEAD
  final Order order = StaticData.orders[0];
=======
>>>>>>> bd39d758e17fd94402b4af15c633b6af7f5bfcf2
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.primaryColor,
      body: Container(
<<<<<<< HEAD
        color: Constants.primaryColor,
=======
>>>>>>> bd39d758e17fd94402b4af15c633b6af7f5bfcf2
        child: Stack(
          overflow: Overflow.visible,
          children: [
            Positioned(
              right: 0.0,
              top: 10.0,
              child: Opacity(
                opacity: 0.3,
                child: Image.asset(
                  "assets/images/washing_machine_illustration.png",
<<<<<<< HEAD
                  fit: BoxFit.cover,
=======
>>>>>>> bd39d758e17fd94402b4af15c633b6af7f5bfcf2
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
<<<<<<< HEAD
                  mainAxisSize: MainAxisSize.min,
=======
>>>>>>> bd39d758e17fd94402b4af15c633b6af7f5bfcf2
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: kToolbarHeight,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        FlutterIcons.keyboard_backspace_mdi,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Details About\n",
                            style:
                                Theme.of(context).textTheme.headline6.copyWith(
                                      color: Colors.white,
                                    ),
                          ),
                          TextSpan(
<<<<<<< HEAD
                            text: "Order #${order.id}",
=======
                            text: "Order #521",
>>>>>>> bd39d758e17fd94402b4af15c633b6af7f5bfcf2
                            style:
                                Theme.of(context).textTheme.headline6.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
<<<<<<< HEAD
                        color: Color.fromRGBO(245, 247, 249, 1),
=======
                        color: Constants.scaffoldBackgroundColor,
>>>>>>> bd39d758e17fd94402b4af15c633b6af7f5bfcf2
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: 24.0,
                        horizontal: 16.0,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Order Details",
                            style:
                                Theme.of(context).textTheme.headline6.copyWith(
                                      color: Color.fromRGBO(74, 77, 84, 1),
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w800,
                                    ),
                          ),
<<<<<<< HEAD
                          SizedBox(height: 10.0),
                          Text(
                            "Washing and Folding".toUpperCase(),
=======
                          SizedBox(
                            height: 6.0,
                          ),
                          Text(
                            "WASHING AND FOLDING",
>>>>>>> bd39d758e17fd94402b4af15c633b6af7f5bfcf2
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(143, 148, 162, 1),
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          getItemRow("3", "T-shirts (man)", "\$30.00"),
                          getItemRow("2", "T-shirts (man)", "\$40.00"),
                          getItemRow("4", "Pants (man)", "\$80.00"),
                          getItemRow("1", "Jeans (man)", "\$20.00"),
                          SizedBox(
                            height: 30.0,
                          ),
                          Text(
<<<<<<< HEAD
                            "IRONING".toUpperCase(),
=======
                            "IRONING",
>>>>>>> bd39d758e17fd94402b4af15c633b6af7f5bfcf2
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(143, 148, 162, 1),
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
<<<<<<< HEAD
                          getItemRow("3", "T-shirts (man)", "\$30.00"),
=======
                          getItemRow("3", "T-shirt (woman)", "\$30.00"),
>>>>>>> bd39d758e17fd94402b4af15c633b6af7f5bfcf2
                          Divider(),
                          getSubtotalRow("Subtotal", "\$200.00"),
                          getSubtotalRow("Delivery", "\$225.00"),
                          SizedBox(
                            height: 10.0,
                          ),
<<<<<<< HEAD
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Row(
                              children: [
                                Text(
                                  "Total",
                                  style: TextStyle(
                                    color: Color.fromRGBO(19, 22, 33, 1),
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "\$225.0",
                                  style: TextStyle(
                                    color: Constants.primaryColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 17.0,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
=======
                          getTotalRow("Total", "\$225.00"),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.0),
>>>>>>> bd39d758e17fd94402b4af15c633b6af7f5bfcf2
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      padding: EdgeInsets.all(16.0),
                      height: ScreenUtil().setHeight(127.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            "Your clothes are now washing.",
                            style:
                                Theme.of(context).textTheme.headline6.copyWith(
                                      color: Color.fromRGBO(74, 77, 84, 1),
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w800,
                                    ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "Estimated Delivery\n",
                                      style: TextStyle(
                                        color: Color.fromRGBO(143, 148, 162, 1),
<<<<<<< HEAD
                                        fontSize: 15.0,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "21 January 2020",
=======
                                      ),
                                    ),
                                    TextSpan(
                                      text: "24 January 2021",
>>>>>>> bd39d758e17fd94402b4af15c633b6af7f5bfcf2
                                      style: TextStyle(
                                        color: Color.fromRGBO(74, 77, 84, 1),
                                        fontSize: 15.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
<<<<<<< HEAD
                              Image.asset("assets/images/washlogo.png")
=======
                              Image.asset(
                                "assets/images/washlogo.png",
                              ),
>>>>>>> bd39d758e17fd94402b4af15c633b6af7f5bfcf2
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

<<<<<<< HEAD
Widget getSubtotalRow(String title, String price) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 8.0),
=======
Widget getTotalRow(String title, String amount) {
  return Padding(
    padding: EdgeInsets.only(bottom: 8.0),
    child: Row(
      children: [
        Text(
          title,
          style: TextStyle(
            color: Color.fromRGBO(19, 22, 33, 1),
            fontSize: 17.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        Spacer(),
        Text(
          amount,
          style: TextStyle(
            color: Constants.primaryColor,
            fontWeight: FontWeight.w600,
            fontSize: 17.0,
          ),
        )
      ],
    ),
  );
}

Widget getSubtotalRow(String title, String price) {
  return Padding(
    padding: EdgeInsets.only(bottom: 8.0),
>>>>>>> bd39d758e17fd94402b4af15c633b6af7f5bfcf2
    child: Row(
      children: [
        Text(
          title,
          style: TextStyle(
            color: Color.fromRGBO(74, 77, 84, 1),
            fontSize: 15.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        Spacer(),
        Text(
          price,
          style: TextStyle(
            color: Color.fromRGBO(74, 77, 84, 1),
            fontSize: 15.0,
          ),
<<<<<<< HEAD
        ),
=======
        )
>>>>>>> bd39d758e17fd94402b4af15c633b6af7f5bfcf2
      ],
    ),
  );
}

Widget getItemRow(String count, String item, String price) {
  return Padding(
<<<<<<< HEAD
    padding: const EdgeInsets.only(bottom: 8.0),
=======
    padding: EdgeInsets.only(bottom: 8.0),
>>>>>>> bd39d758e17fd94402b4af15c633b6af7f5bfcf2
    child: Row(
      children: [
        Text(
          count,
          style: TextStyle(
            color: Color.fromRGBO(74, 77, 84, 1),
            fontSize: 15.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        Expanded(
          child: Text(
            " x $item",
            style: TextStyle(
              color: Color.fromRGBO(143, 148, 162, 1),
              fontSize: 15.0,
            ),
          ),
        ),
        Text(
          price,
          style: TextStyle(
            color: Color.fromRGBO(74, 77, 84, 1),
            fontSize: 15.0,
          ),
<<<<<<< HEAD
        ),
=======
        )
>>>>>>> bd39d758e17fd94402b4af15c633b6af7f5bfcf2
      ],
    ),
  );
}
