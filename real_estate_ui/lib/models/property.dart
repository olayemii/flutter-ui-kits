enum PropertyTypes { PRIVATE, AGENCY }

class Property {
  final String name;
  final String description;
  final String address;
  final String price;
  final String imagePath;
  final PropertyTypes propertyTypes;
  final bool liked;

  Property({
    this.name,
    this.description,
    this.address,
    this.price,
    this.imagePath,
    this.liked,
    this.propertyTypes,
  });
}
