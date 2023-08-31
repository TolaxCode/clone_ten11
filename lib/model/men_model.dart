import 'package:flutter/material.dart';

class MenModel {
  String image;
  String name;
  double price;
  String des;
  String composition;

  MenModel({
    required this.image,
    required this.name,
    required this.price,
    required this.des,
    required this.composition,
  });
}

List<MenModel> _listMenModel = [
  MenModel(
    image: 'assets/men/m1.jpg',
    name: 'Slim Fit Jeans',
    price: 14.36,
    des:
        'Knit joggers featuring side pockets with zipper, one pocket on the leg and elastic waistband.one pocket on the leg and elastic waistband.',
    composition: '63.9% Cotton 36.1% Polyester',
  ),
  MenModel(
    image: 'assets/men/m17.jpg',
    name: 'Slim Fit Trousers',
    price: 17.74,
    des:
        'Knit joggers featuring side pockets, graphic print at the front and elastic waistband.',
    composition: '63.9% Cotton 36.1% Polyester',
  ),
  MenModel(
    image: 'assets/men/m2.jpg',
    name: 'T-shirt with Print',
    price: 26.67,
    des:
        'Regular fit knit trousers featuring side pockets with zipper fastening and adjustable elastic waistband.',
    composition: '63.9% Cotton 36.1% Polyester',
  ),
  MenModel(
    image: 'assets/men/m4.jpg',
    name: 'Premium Polo Shirt',
    price: 21.75,
    des:
        'Regular fit knit trousers featuring side pockets with zipper fastening and adjustable elastic waistband.',
    composition: '63.9% Cotton 36.1% Polyester',
  ),
  MenModel(
    image: 'assets/men/m5.jpg',
    name: 'Basic Tank Top',
    price: 16.36,
    des:
        'Regular fit knit trousers featuring side pockets with zipper fastening and adjustable elastic waistband.',
    composition: '63.9% Cotton 36.1% Polyester',
  ),
  MenModel(
    image: 'assets/men/m6.jpg',
    name: 'Crewneck T-shirt',
    price: 26.87,
    des:
        'Regular fit knit trousers featuring side pockets with zipper fastening and adjustable elastic waistband.',
    composition: '63.9% Cotton 36.1% Polyester',
  ),
  MenModel(
    image: 'assets/men/m7.jpg',
    name: 'Sweatshirt with Print',
    price: 16.11,
    des:
        'Regular fit knit trousers featuring side pockets with zipper fastening and adjustable elastic waistband.',
    composition: '63.9% Cotton 36.1% Polyester',
  ),
  MenModel(
    image: 'assets/men/m8.jpg',
    name: 'Technical Cargo Jogger',
    price: 18.36,
    des:
        'Regular fit knit trousers featuring side pockets with zipper fastening and adjustable elastic waistband.',
    composition: '63.9% Cotton 36.1% Polyester',
  ),
  MenModel(
    image: 'assets/men/m9.jpg',
    name: 'Printed Swimming Shorts',
    price: 19.56,
    des:
        'Regular fit knit trousers featuring side pockets with zipper fastening and adjustable elastic waistband.',
    composition: '63.9% Cotton 36.1% Polyester',
  ),
  MenModel(
    image: 'assets/men/m10.jpg',
    name: 'Drawstring Bermuda Shorts',
    price: 28,
    des:
        'Regular fit knit trousers featuring side pockets with zipper fastening and adjustable elastic waistband.',
    composition: '63.9% Cotton 36.1% Polyester',
  ),
  MenModel(
    image: 'assets/men/m11.jpg',
    name: 'T-shirt With Print',
    price: 25.36,
    des:
        'Regular fit knit trousers featuring side pockets with zipper fastening and adjustable elastic waistband.',
    composition: '63.9% Cotton 36.1% Polyester',
  ),
  MenModel(
    image: 'assets/men/m12.jpg',
    name: 'Straight Corduroy Shorts',
    price: 13.27,
    des:
        'Regular fit knit trousers featuring side pockets with zipper fastening and adjustable elastic waistband.',
    composition: '63.9% Cotton 36.1% Polyester',
  ),
  MenModel(
    image: 'assets/men/m13.jpg',
    name: 'Hoodie With Print',
    price: 24.66,
    des:
        'Regular fit knit trousers featuring side pockets with zipper fastening and adjustable elastic waistband.',
    composition: '63.9% Cotton 36.1% Polyester',
  ),
  MenModel(
    image: 'assets/men/m14.jpg',
    name: 'Tie-Dye Jacket',
    price: 28,
    des:
        'Regular fit knit trousers featuring side pockets with zipper fastening and adjustable elastic waistband.',
    composition: '63.9% Cotton 36.1% Polyester',
  ),
  MenModel(
    image: 'assets/men/m15.jpg',
    name: 'Cargo Trousers',
    price: 18.36,
    des:
        'Regular fit knit trousers featuring side pockets with zipper fastening and adjustable elastic waistband.',
    composition: '63.9% Cotton 36.1% Polyester',
  ),
  MenModel(
    image: 'assets/men/m16.jpg',
    name: 'Sweatshirt With Print',
    price: 23.36,
    des:
        'Regular fit knit trousers featuring side pockets with zipper fastening and adjustable elastic waistband.',
    composition: '63.9% Cotton 36.1% Polyester',
  ),
  MenModel(
    image: 'assets/men/m17.jpg',
    name: 'Sweatpants With Print',
    price: 19.16,
    des:
        'Regular fit knit trousers featuring side pockets with zipper fastening and adjustable elastic waistband.',
    composition: '63.9% Cotton 36.1% Polyester',
  ),
  MenModel(
    image: 'assets/men/m18.jpg',
    name: 'Sweatshirt With Print',
    price: 19.67,
    des:
        'Regular fit knit trousers featuring side pockets with zipper fastening and adjustable elastic waistband.',
    composition: '63.9% Cotton 36.1% Polyester',
  ),
  MenModel(
    image: 'assets/men/m19.jpg',
    name: 'Jogging Trousers',
    price: 16.66,
    des:
        'Regular fit knit trousers featuring side pockets with zipper fastening and adjustable elastic waistband.',
    composition: '63.9% Cotton 36.1% Polyester',
  ),
  MenModel(
    image: 'assets/men/m20.jpg',
    name: 'Printed Sweatshirt',
    price: 20,
    des:
        'Regular fit knit trousers featuring side pockets with zipper fastening and adjustable elastic waistband.',
    composition: '63.9% Cotton 36.1% Polyester',
  ),
];

get listMenModel => _listMenModel;
