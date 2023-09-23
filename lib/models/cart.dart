import 'package:flutter/material.dart';
import 'package:nikeshop/data/shoes.dart';
import 'package:nikeshop/models/shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoes;
  }

  List<Shoe> getUserCart = [];
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemToCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
