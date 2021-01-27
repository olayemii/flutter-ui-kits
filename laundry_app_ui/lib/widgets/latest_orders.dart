import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:laundry_app_ui/utils/constants.dart';
import 'package:laundry_app_ui/utils/static_data.dart';
import 'package:laundry_app_ui/widgets/order_card.dart';

class LatestOrders extends StatelessWidget {
=======
import 'package:laundry_app_ui/models/order.dart';
import 'package:laundry_app_ui/utils/constants.dart';
import 'package:laundry_app_ui/widgets/order_card.dart';

class LatestOrders extends StatelessWidget {
  final List<Order> orders = [
    Order(
      id: 507,
      deliveryAddress: "New Times Square",
      arrivalDate: DateTime(2020, 1, 23),
      placedDate: DateTime(2020, 1, 17),
      status: OrderStatus.DELIVERING,
    ),
    Order(
      id: 536,
      deliveryAddress: "Victoria Square",
      arrivalDate: DateTime(2020, 1, 21),
      placedDate: DateTime(2020, 1, 19),
      status: OrderStatus.PICKING_UP,
    )
  ];
>>>>>>> bd39d758e17fd94402b4af15c633b6af7f5bfcf2
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20.0,
          ),
          Padding(
<<<<<<< HEAD
            padding: EdgeInsets.symmetric(horizontal: 24.0),
=======
            padding: EdgeInsets.symmetric(
              horizontal: 24.0,
            ),
>>>>>>> bd39d758e17fd94402b4af15c633b6af7f5bfcf2
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Latest Orders",
                  style: TextStyle(
                    color: Color.fromRGBO(19, 22, 33, 1),
                    fontSize: 18.0,
                  ),
                ),
                Text(
<<<<<<< HEAD
                  "View all",
                  textAlign: TextAlign.right,
=======
                  "View All",
>>>>>>> bd39d758e17fd94402b4af15c633b6af7f5bfcf2
                  style: TextStyle(
                    color: Constants.primaryColor,
                    fontWeight: FontWeight.w600,
                  ),
<<<<<<< HEAD
                ),
=======
                )
>>>>>>> bd39d758e17fd94402b4af15c633b6af7f5bfcf2
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          ListView.separated(
            shrinkWrap: true,
<<<<<<< HEAD
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return OrderCard(
                order: StaticData.orders[index],
=======
            padding: EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 10.0,
            ),
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              // Lets pass the order to a new widget and render it there
              return OrderCard(
                order: orders[index],
>>>>>>> bd39d758e17fd94402b4af15c633b6af7f5bfcf2
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 15.0,
              );
            },
<<<<<<< HEAD
            itemCount: StaticData.orders.length,
            padding: EdgeInsets.symmetric(
              horizontal: 16.0,
            ),
          ),
=======
            itemCount: orders.length,
          )
          // Let's create an order model
>>>>>>> bd39d758e17fd94402b4af15c633b6af7f5bfcf2
        ],
      ),
    );
  }
}
