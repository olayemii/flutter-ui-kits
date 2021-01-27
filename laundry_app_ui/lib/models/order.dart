enum OrderStatus { PICKING_UP, DELIVERING }

class Order {
  final int id;
  final OrderStatus status;
  final DateTime arrivalDate;
<<<<<<< HEAD
  final String arrivalAddress;
  final DateTime placedDate;

  Order({
    this.id,
    this.arrivalAddress,
    this.arrivalDate,
    this.status,
    this.placedDate,
=======
  final DateTime placedDate;
  final String deliveryAddress;

  Order({
    this.id,
    this.status,
    this.arrivalDate,
    this.placedDate,
    this.deliveryAddress,
>>>>>>> bd39d758e17fd94402b4af15c633b6af7f5bfcf2
  });
}
