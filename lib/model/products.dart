import 'package:flutter/material.dart';

import 'package:shopping_ui_project/model/men_model.dart';
import 'package:shopping_ui_project/model/women_model.dart';

class Products extends ChangeNotifier {
  //men
  final List<MenModel> _cartMenItem = [];
  //get list cart men item
  List<MenModel> get cartMenItem => _cartMenItem;

  //add item to cart
  void addMenItemToCart(MenModel menModel) {
    _cartMenItem.add(menModel);
    notifyListeners();
  }

  //remove item from cart
  void removeMenItemFromCart(MenModel menModel) {
    _cartMenItem.remove(menModel);
    notifyListeners();
  }

  //calculate price
  double calculateMenTotal() {
    double total = 0;
    for (int i = 0; i < cartMenItem.length; i++) {
      total += _cartMenItem[i].price;
    }
    notifyListeners();
    return total;
  }

  //list women
  final List<WomenModel> _cartWomen = [];
  //get list cart women item
  List<WomenModel> get cartWomen => _cartWomen;

  //add item to cart
  void addWomenItemToCart(WomenModel womenModel) {
    cartWomen.add(womenModel);
    notifyListeners();
  }

  //remove item from cart
  void removeWomenItemFromCart(WomenModel womenModel) {
    cartWomen.remove(womenModel);
    notifyListeners();
  }

  //calculate price
  double calculateWomenTotal() {
    double total = 0;
    for (int i = 0; i < cartWomen.length; i++) {
      total += cartWomen[i].price;
    }
    notifyListeners();
    return total;
  }
}
