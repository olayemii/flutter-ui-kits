import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:laundry_app_ui/models/order.dart';

class OrderCard extends StatelessWidget {
  final Order order;
  OrderCard({this.order});
  final DateFormat formatter = DateFormat("yyyy MMMM dd");
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(121.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: Color.fromRGBO(220, 233, 245, 1),
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          getOrderIconWidget(order.status),
          SizedBox(
            width: 15.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  getOrderStatusText(order.status),
                  style: TextStyle(
                    color: Color.fromRGBO(19, 22, 33, 1),
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                textRow("Placed On", formatter.format(order.placedDate)),
                SizedBox(
                  height: 5.0,
                ),
                textRow("Delivery On", formatter.format(order.arrivalDate)),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget textRow(String textOne, String textTwo) {
  return Wrap(
    children: [
      Text(
        "$textOne:",
        style: TextStyle(
          color: Color.fromRGBO(74, 77, 84, 0.7),
          fontSize: 14.0,
        ),
      ),
      SizedBox(
        width: 4.0,
      ),
      Text(
        textTwo,
        style: TextStyle(
          color: Color.fromRGBO(19, 22, 33, 1),
          fontSize: 14.0,
        ),
      ),
    ],
  );
}

String getOrderStatusText(OrderStatus status) {
  switch (status) {
    case OrderStatus.PICKING_UP:
      return "Picking Up Order";
    case OrderStatus.DELIVERING:
      return "Delivering Order";
    default:
      return "Picking Up Order";
  }
}

Widget getOrderIconWidget(OrderStatus status) {
  print(status);
  switch (status) {
    case OrderStatus.PICKING_UP:
      return Container(
        width: ScreenUtil().setWidth(37.0),
        height: ScreenUtil().setHeight(37.0),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color.fromRGBO(221, 40, 81, 0.18),
        ),
        child: Icon(
          FlutterIcons.loader_fea,
          color: Color.fromRGBO(221, 40, 81, 1),
        ),
      );
    case OrderStatus.DELIVERING:
      return Container(
        width: ScreenUtil().setWidth(37.0),
        height: ScreenUtil().setHeight(37.0),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color.fromRGBO(255, 99, 2, 0.15),
        ),
        child: Icon(
          FlutterIcons.history_mdi,
          color: Color.fromRGBO(255, 99, 2, 1),
        ),
      );

    default:
      return Container(
        width: ScreenUtil().setWidth(37.0),
        height: ScreenUtil().setHeight(37.0),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color.fromRGBO(221, 40, 81, 0.18),
        ),
        child: Icon(
          FlutterIcons.loader_fea,
          color: Color.fromRGBO(221, 40, 81, 1),
        ),
      );
  }
}
