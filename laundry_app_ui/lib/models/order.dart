enum OrderStatus { PICKING_UP, DELIVERING }

class Order {
  final OrderStatus status;
  final DateTime arrivalDate;
  final String arrivalAddress;

  Order({this.arrivalAddress, this.arrivalDate, this.status});
}
