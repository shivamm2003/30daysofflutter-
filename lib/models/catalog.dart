// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


class CatalogModel {
  static  List<Item> items = [
    Item(
      id: 1,
      name: "iPhone 12 Pro",
      desc: "12th generation",
      price: 999,
      color: "#33505a",
      image: "https://m.media-amazon.com/images/I/71hIfcIPyxS._SL1500_.jpg",
    ),
  ];
}

class Item {
  // this class is immutable we cannot change its item jo bhi data padega vo constructor ke through padega
  final String desc;
  final int id;
  final String name;
  final num price;
  final String color;
  final String image;

  Item({
    // this is a by defaut constructor .
    // this id done so we can directiy acess items from catalog class
    required this.desc,
    required this.id,
    required this.name,
    required this.price,
    required this.color,
    required this.image,
  });

  

  Item copyWith({
    String? desc,
    int? id,
    String? name,
    num? price,
    String? color,
    String? image,
  }) {
    return Item(
      desc: desc ?? this.desc,
      id: id ?? this.id,
      name: name ?? this.name,
      price: price ?? this.price,
      color: color ?? this.color,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'desc': desc,
      'id': id,
      'name': name,
      'price': price,
      'color': color,
      'image': image,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      desc: map['desc'] as String,
      id: map['id'] as int,
      name: map['name'] as String,
      price: map['price'] as num,
      color: map['color'] as String,
      image: map['image'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) => Item.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Item(desc: $desc, id: $id, name: $name, price: $price, color: $color, image: $image)';
  }

  @override
  bool operator ==(covariant Item other) {
    if (identical(this, other)) return true;
  
    return 
      other.desc == desc &&
      other.id == id &&
      other.name == name &&
      other.price == price &&
      other.color == color &&
      other.image == image;
  }

  @override
  int get hashCode {
    return desc.hashCode ^
      id.hashCode ^
      name.hashCode ^
      price.hashCode ^
      color.hashCode ^
      image.hashCode;
  }
} // this is constructor of all finql fields


// used to map json to dart without using extension
// factory Item.fromMap(Map<String, dynamic> map) {
//     return Item(
//       id: map["id"],
//       name: map["name"],
//       desc: map["desc"],
//       price: map["price"],
//       color: map["color"],
//       image: map["image"],
//     );
//   }
//   toMap() => {
//         "id": id,
//         "name": name,
//         "desc": desc,
//         "price": price,
//         "color": color,
//         "image": image,
//       };