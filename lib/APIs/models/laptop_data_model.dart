class LaptopDataModel {
// varaible decalartion

  String id;
  String name;
  Data myData;
// contructer
  LaptopDataModel({
    required this.id,
    required this.name,
    required this.myData,
  });

// from json funtion
  factory LaptopDataModel.fromJson(Map<String, dynamic> json) {
    return LaptopDataModel(id: json['id'], name: json['name'], myData: Data.fromJson(json['data']), );
  }

// to json function
}

class Data {
  int year;
  double price;
  String cpuModel;
  String hardiskSize;

  Data({
    required this.year,
    required this.price,
    required this.cpuModel,
    required this.hardiskSize,
  });

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
        year: json['year'], price: json['price'], cpuModel: json['CPU model'], hardiskSize: json['Hard disk size']);
  }
}
