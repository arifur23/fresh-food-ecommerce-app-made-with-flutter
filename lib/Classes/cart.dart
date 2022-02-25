const String tableCart = 'carts';

class CartFields{

  static const String id = '_id';
  static const String imagePath = "imagePath";
  static const String productName = 'productName';
  static const String productQuantity = 'productQuantity';
  static const String productPrice = 'productPrice';
  static const String subTotal = 'subTotal';
  static const String total = 'total';
  static const String isDelivered = 'isDelivered';

  List<String> values = [
    id,
    imagePath,
    productName,
    productQuantity,
    productPrice,
    subTotal,
    total,
    isDelivered
  ];

}

class Cart{
  final int id;
  final String imagePath;
  final String productName;
  final int productQuantity;
  final double productPrice;
  final double subTotal;
  final double total;
  final bool isDelivered;

  Cart({
    required this.id,
    required this.imagePath,
    required this.productName,
    required this.productQuantity,
    required this.productPrice,
    required this.subTotal,
    required this.total,
    required this.isDelivered,
});

  Cart copy({
    int? id,
    String? imagePath,
    String? productName,
    int? productQuantity,
    double? productPrice,
    double? subTotal,
    double? total,
    bool? isDelivered
 }) => Cart(
    id: id ?? this.id,
    imagePath: imagePath ?? this.imagePath,
    productName: productName ?? this.productName,
    productQuantity: productQuantity ?? this.productQuantity,
    productPrice: productPrice ?? this.productPrice,
    subTotal: subTotal ?? this.subTotal,
    total: total ?? this.total,
    isDelivered: isDelivered ?? this.isDelivered
    );

  Cart fromJson(Map<String, Object?> json) => Cart(
      id: json[CartFields.id] as int,
      imagePath: json[CartFields.imagePath] as String,
      productName: json[CartFields.productName] as String,
      productQuantity: json[CartFields.productQuantity] as int,
      productPrice: json[CartFields.productPrice] as double,
      subTotal: json[CartFields.subTotal] as double,
      total: json[CartFields.total] as double,
      isDelivered: json[CartFields.isDelivered] as bool
  );

  Map<String, Object?> toJson() => {
    CartFields.id : id,
    CartFields.imagePath : imagePath,
    CartFields.productName : productName,
    CartFields.productQuantity : productQuantity,
    CartFields.productPrice : productPrice,
    CartFields.subTotal : subTotal,
    CartFields.total : total,
    CartFields.isDelivered : isDelivered
  };
}