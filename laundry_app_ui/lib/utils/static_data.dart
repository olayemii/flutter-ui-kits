import 'package:laundry_app_ui/models/order.dart';

class StaticData {
  static final List<Order> orders = [
    Order(
      id: 507,
      arrivalAddress: "New Times Square",
      status: OrderStatus.PICKING_UP,
      arrivalDate: DateTime(2020, 1, 21),
      placedDate: DateTime(2020, 1, 17),
    ),
    Order(
      id: 536,
      arrivalAddress: "Victoria Square",
      status: OrderStatus.DELIVERING,
      arrivalDate: DateTime(2020, 1, 21),
      placedDate: DateTime(2020, 1, 17),
    ),
  ];
}
