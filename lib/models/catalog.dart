

import 'package:flutter/foundation.dart';

class CatalogModel{
static  List<Item>items = [
  Item(
    id: "1",
    name: "iphone 12 pro",
    desc: "Apple Orginal",
    price: "67889",
    color: "#33505a",
    image: "https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/MHL73?wid=1144&hei=1144&fmt=jpeg&qlt=90&.v=1623349258000",)
];
}
class Item
{
  final String id;
  final String name;
  final String desc;
  final String price;
  final String color;
  final String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});


// ignore: non_constant_identifier_names
factory Item.fromMap(Map<String,dynamic>map){
  return Item(
    id: map["id"], 
  name: map["name"],
   desc: map["desc"],
    price: map["price"], 
    color: map["color"],
     image: map["image"]);
}

toMap()=>{
  "id":id,
  "name":name,
  "desc":desc,
  "price":price,
  "color":color,
  "image":image,
  };
}