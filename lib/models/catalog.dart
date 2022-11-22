import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CatalogModel {
  static final items = [
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

  Item({ // this is a by defaut constructor .
   
    // this id done so we can directiy acess items from catalog class
    required this.id,
    required this.name,
    required this.desc,
    required this.price,
    required this.color, 
    required this.image,
  });

  factory Item.fromMap(Map<String,dynamic> map){}
  



} // this is constructor of all finql fields
