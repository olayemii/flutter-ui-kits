import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laundry_app_ui/models/order.dart';

class OrderCard extends StatelessWidget {
  final Order order;
  OrderCard({this.order});
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
      padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          getOrderIconWidget(order.status),
        ],
      ),
    );
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
          color: Color.fromRGBO(255, 99, 2, 0.15),
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
