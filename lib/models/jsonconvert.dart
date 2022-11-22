import 'package:flutter/material.dart';

class CatalogModel {
  List<Products>? products;

  CatalogModel({this.products});

  CatalogModel.fromJson(Map<String, dynamic> json) {
    products = json["products"] == null
        ? null
        : (json["products"] as List).map((e) => Products.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (products != null) {
      _data["products"] = products?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Products {
  int? id;
  String? name;
  String? desc;
  int? price;
  String? color;
  String? image;

  Products({this.id, this.name, this.desc, this.price, this.color, this.image});

  Products.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    desc = json["desc"];
    price = json["price"];
    color = json["color"];
    image = json["image"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["name"] = name;
    _data["desc"] = desc;
    _data["price"] = price;
    _data["color"] = color;
    _data["image"] = image;
    return _data;
  }
}
