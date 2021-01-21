import 'package:flutter/material.dart';
import 'package:laundry_app_ui/models/order.dart';
import 'package:laundry_app_ui/utils/constants.dart';

class LatestOrders extends StatelessWidget {
  final List<Order> orders = [
    Order(
      arrivalAddress: "New Times Square",
      status: OrderStatus.PICKING_UP,
      arrivalDate: DateTime(2020, 01, 21),
    ),
    Order(
      arrivalAddress: "Victoria Square",
      status: OrderStatus.PICKING_UP,
      arrivalDate: DateTime(2020, 01, 21),
    ),
  ];
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
            padding: EdgeInsets.symmetric(horizontal: 24.0),
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
                  "View all",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Constants.primaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 7.0,
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              children: [],
            ),
          ),
        ],
      ),
    );
  }
}
