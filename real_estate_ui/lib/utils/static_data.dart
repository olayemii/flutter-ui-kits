import 'package:real_estate_ui/models/property.dart';

class StaticData {
  static final List<Property> sampleProperties = [
    Property(
      name: "Gorgious Appartment #1215",
      imagePath: "assets/images/property-1.png",
      price: "\$2,800/yr",
      description: "1-4 Beds, 1-2 Baths, 1,852 sqft",
      address: "252 1st Avenue",
      propertyTypes: PropertyTypes.AGENCY,
      liked: false,
    ),
    Property(
      name: "Gorgious Appartment #1215",
      imagePath: "assets/images/property-2.png",
      price: "\$2,800/yr",
      description: "1-4 Beds, 1-2 Baths, 1,852 sqft",
      address: "252 1st Avenue",
      propertyTypes: PropertyTypes.PRIVATE,
      liked: true,
    ),
    Property(
      name: "Gorgious Appartment #1215",
      imagePath: "assets/images/property-3.png",
      price: "\$2,800/yr",
      description: "1-4 Beds, 1-2 Baths, 1,852 sqft",
      address: "252 1st Avenue",
      propertyTypes: PropertyTypes.AGENCY,
      liked: false,
    ),
    Property(
      name: "Gorgious Appartment #1215",
      imagePath: "assets/images/property-4.png",
      price: "\$2,800/yr",
      description: "1-4 Beds, 1-2 Baths, 1,852 sqft",
      address: "252 1st Avenue",
      propertyTypes: PropertyTypes.AGENCY,
      liked: true,
    ),
  ];
}
