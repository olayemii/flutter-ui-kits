enum OrderStatus { PICKING_UP, DELIVERING }

class Order {
  final int id;
  final OrderStatus status;
  final DateTime arrivalDate;
  final DateTime placedDate;
  final String deliveryAddress;

  Order({
    required this.id,
    required this.status,
    required this.arrivalDate,
    required this.placedDate,
    required this.deliveryAddress,
  });
}
