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
    cartMenItem.remove(menModel);
    notifyListeners();
  }

  //calculate price
  double calculateMenTotal(int index) {
    double total = 0;
    for (int i = 0; i < cartMenItem.length; i++) {
      total += cartMenItem[index].price;
    }
    notifyListeners();
    return total;
  }

  //list women
  final List<WowmenModel> _cartWomenItem = [];
}
