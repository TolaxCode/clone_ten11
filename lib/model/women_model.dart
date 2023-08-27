import 'package:flutter/material.dart';

class WowmenModel {
  String image;
  String name;
  double price;
  Color? color;
  Color? color1;
  Color? color2;
  Color? color3;
  WowmenModel({
    required this.image,
    required this.name,
    required this.price,
    required this.color,
    required this.color1,
    required this.color2,
    required this.color3,
  });
  
}

List<WowmenModel> _listWowmenModel = [
    WowmenModel(
      image: 'assets/women/w14.jpg',
      name: 'Mesh T-shirt ',
      price: 14.36,
      color: Colors.blue[900],
      color1: Colors.lightBlue,
      color2: null,
      color3: null,
    ),
    WowmenModel(
      image: 'assets/women/w11.jpg',
      name: 'Printed Crop Top',
      price: 13.56,
      color: Colors.green,
      color1: Colors.orange[100],
      color2: Colors.black,
      color3: null,
    ),
    WowmenModel(
      image: 'assets/women/w3.jpg',
      name: 'Tank Top',
      price: 7.61,
      color: Colors.grey,
      color1: Colors.pink[200],
      color2: Colors.brown,
      color3: null,
    ),
    WowmenModel(
      image: 'assets/women/w4.jpg',
      name: 'Knitted Cardigan',
      price: 8.80,
      color: Colors.black,
      color1: Colors.green[900],
      color2: Colors.white,
      color3: null,
    ),
    WowmenModel(
      image: 'assets/women/w4.jpg',
      name: 'Basic Tank Top',
      price: 6.36,
      color: Colors.black,
      color1: Colors.white,
      color2: Colors.orange[500],
      color3: null,
    ),
    WowmenModel(
      image: 'assets/women/w5.jpg',
      name: 'Oversized Shirt',
      price: 17.50,
      color: Colors.black,
      color1: Colors.blue,
      color2: Colors.white,
      color3: null,
    ),
    WowmenModel(
      image: 'assets/women/w6.jpg',
      name: 'Crop T-shirt',
      price: 9.27,
      color: Colors.blue[900],
      color1: Colors.black,
      color2: Colors.white,
      color3: null,
    ),
    WowmenModel(
      image: 'assets/women/w7.jpg',
      name: 'Sweat Shorts With Print',
      price: 13.56,
      color: Colors.black,
      color1: Colors.green[900],
      color2: Colors.orange[100],
      color3: null,
    ),
    WowmenModel(
      image: 'assets/women/w8.jpg',
      name: 'Crewneck Sweatshirt',
      price: 14.07,
      color: Colors.orange[100],
      color1: Colors.green[400],
      color2: Colors.white,
      color3: null,
    ),
    WowmenModel(
      image: 'assets/women/w9.jpg',
      name: 'Drawstring Bermuda Shorts',
      price: 14.10,
      color: Colors.blueAccent,
      color1: Colors.black,
      color2: Colors.white,
      color3: null,
    ),
    WowmenModel(
      image: 'assets/women/w10.jpg',
      name: 'Bermuda Shorts',
      price: 10.36,
      color: Colors.blue,
      color1: Colors.black,
      color2: Colors.red,
      color3: null,
    ),
    WowmenModel(
      image: 'assets/women/w2.jpg',
      name: 'Straight Corduroy Shorts',
      price: 13.27,
      color: Colors.black,
      color1: Colors.black,
      color2: Colors.red,
      color3: Colors.blue,
    ),
    WowmenModel(
      image: 'assets/women/w12.jpg',
      name: 'Printed T-shirt',
      price: 990,
      color: Colors.green,
      color1: Colors.black,
      color2: null,
      color3: null,
    ),
    WowmenModel(
      image: 'assets/women/w13.jpg',
      name: 'Sweatshirt With Print',
      price: 990,
      color: Colors.amber,
      color1: Colors.purple[900],
      color2: null,
      color3: null,
    ),
    WowmenModel(
      image: 'assets/women/w1.jpg',
      name: 'Cargo Trousers',
      price: 18.36,
      color: Colors.green,
      color1: Colors.brown,
      color2: null,
      color3: null,
    ),
    WowmenModel(
      image: 'assets/women/w15.jpg',
      name: 'Sweatshirt With Print',
      price: 18.36,
      color: Colors.lightGreen,
      color1: Colors.brown[300],
      color2: null,
      color3: null,
    ),
    WowmenModel(
      image: 'assets/women/w16.jpg',
      name: 'Sweatpants With Print',
      price: 19.16,
      color: Colors.black,
      color1: Colors.brown[300],
      color2: null,
      color3: null,
    ),
    WowmenModel(
      image: 'assets/women/w17.jpg',
      name: 'Sweatshirt With Print',
      price: 19.67,
      color: Colors.black,
      color1: Colors.white,
      color2: null,
      color3: null,
    ),
    WowmenModel(
      image: 'assets/women/w18.jpg',
      name: 'Jogging Trousers',
      price: 16.96,
      color: Colors.blue,
      color1: Colors.white,
      color2: null,
      color3: null,
    ),
    WowmenModel(
      image: 'assets/women/w19.jpg',
      name: 'Printed Sweatshirt',
      price: 990,
      color: Colors.black,
      color1: Colors.white,
      color2: null,
      color3: null,
    ),
  ];
 get listWowmenModel => _listWowmenModel;