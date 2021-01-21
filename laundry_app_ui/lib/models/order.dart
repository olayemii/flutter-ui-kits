enum OrderStatus { PICKING_UP, DELIVERING }

class Order {
  final int id;
  final OrderStatus status;
  final DateTime arrivalDate;
  final String arrivalAddress;
  final DateTime placedDate;

  Order({
    this.id,
    this.arrivalAddress,
    this.arrivalDate,
    this.status,
    this.placedDate,
  });
}
