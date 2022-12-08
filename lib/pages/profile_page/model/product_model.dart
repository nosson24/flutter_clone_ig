import 'dart:convert';

class ProductModel {
  final String name;
  final String detail;
  final String userName;

  ProductModel({
    required this.name,
    required this.detail,
    required this.userName,
  });

  // factory ProductModel.fromJson(Map<String, dynamic> json) {
  //   return ProductModel(
  //     name: json['naem'],
  //     detail: json['detail'],
  //     userName: json['userName'],
  //   );
  // }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'detail': detail,
      'userName': userName,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      name: map['name'] ?? '',
      detail: map['detail'] ?? '',
      userName: map['userName'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) => ProductModel.fromMap(json.decode(source));

}
