import 'package:flutter/material.dart';
class Imager{
  String imager;
  String text1;
  String text2;
  String number;
  String cost;

  Imager({this.imager, this.text1, this.text2, this.number, this.cost});
}
List<Imager> Images = [
  Imager(imager: 'assets/images2.jpg',text1: "Lunch Box",text2:"Middly spiced indian buttermilk with mint ", number: "4.6", cost: "300"),
  Imager(imager: 'assets/images4.jpg',text1: "Lunch Box",text2:"Middly spiced indian buttermilk with mint", number: "4.8", cost: "100"),
  Imager(imager: 'assets/images5.jpeg',text1: "Lunch Box",text2:"Middly spiced indian buttermilk with mint", number: "5.6", cost: "350"),
  Imager(imager: 'assets/images8.jpg',text1: "Lunch Box",text2:"Middly spiced indian buttermilk with mint", number: "9.6", cost: "800"),

];