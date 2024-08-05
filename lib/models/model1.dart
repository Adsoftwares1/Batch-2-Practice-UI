class Product {
  final String id;
  final String name;
  final ProductData data;

  Product({
    required this.id,
    required this.name,
    required this.data,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] as String,
      name: json['name'] as String,
      data: ProductData.fromJson(json['data'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'data': data.toJson(),
    };
  }
}

class ProductData {
  final int year;
  final double price;
  final String cpuModel;
  final String hardDiskSize;

  ProductData({
    required this.year,
    required this.price,
    required this.cpuModel,
    required this.hardDiskSize,
  });

  factory ProductData.fromJson(Map<String, dynamic> json) {
    return ProductData(
      year: json['year'] as int,
      price: (json['price'] as num).toDouble(),
      cpuModel: json['CPU model'] as String,
      hardDiskSize: json['Hard disk size'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'year': year,
      'price': price,
      'CPU model': cpuModel,
      'Hard disk size': hardDiskSize,
    };
  }
}