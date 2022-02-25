
const String tableName = 'products';

class ProductFields{
  static const String id = '_id';
  static const String productName = 'productName';
  static const String productQuantity = 'productQuantity';
  static const String productPrice = 'productPrice';
  static const String productDescription = 'productDescription';
  static const String productStorage = 'productStorage';

  List<String> values = [
    id,
    productName,
    productQuantity,
    productPrice,
    productDescription,
    productStorage
  ];
}

class Product{
  final int id;
  final String name;
  final int quantity;
  final double price;
  final String description;
  final String storage;

  Product({
    required this.id,
    required this.name,
    required this.quantity,
    required this.price,
    required this.description,
    required this.storage
});

  Product copy({
    int? id,
    String? name,
    int? quantity,
    double? price,
    String? description,
    String? storage

 }) => Product(
      id: id ?? this.id,
      name: name ?? this.name,
      quantity: quantity ?? this.quantity,
      price: price ?? this.price,
      description: description ?? this.description,
      storage: storage ?? this.storage
  );

  Product fromJson(Map<String, Object?> json) => Product(
      id: json[ProductFields.id] as int,
      name: json[ProductFields.productName] as String,
      quantity: json[ProductFields.productQuantity] as int,
      price: json[ProductFields.productPrice] as double,
      description: json[ProductFields.productDescription] as String,
      storage: json[ProductFields.productStorage] as String
  );

  Map<String, Object?>  toJson() => {
    ProductFields.id : id,
    ProductFields.productName : name,
    ProductFields.productQuantity : quantity,
    ProductFields.productPrice : price,
    ProductFields.productDescription : description,
    ProductFields.productStorage : storage
  };

}