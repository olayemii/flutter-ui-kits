enum OrderStatus { PICKING_UP, DELIVERING }

class Order {
  final int? id; // Nullable
  final OrderStatus status; // Non-nullable
  final DateTime? arrivalDate; // Nullable
  final DateTime? placedDate; // Nullable
  final String? deliveryAddress; // Nullable

  Order({
    this.id,
    required this.status, // Required parameter, non-nullable
    this.arrivalDate,
    this.placedDate,
    this.deliveryAddress,
  });
}
