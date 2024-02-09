import 'package:ecommerce_app/models/phone.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  List<Phone> phoneShop = [
    Phone(
      name: 'A05',
      price: '300',
      imgPath: 'lib/images/a54.jpeg',
      description: 'Samsung Galaxy A05'
    ),

    Phone(
      name: 'A53',
      price: '600',
      imgPath: 'lib/images/a54.jpeg',
      description: 'Samsung Galaxy A53'
    ),

    Phone(
      name: 'A54 Lime',
      price: '700',
      imgPath: 'lib/images/a54.jpeg',
      description: 'Samsung Galaxy A54 Lime'
    ),

    Phone(
      name: 'A54 Purple',
      price: '700',
      imgPath: 'lib/images/a54.jpeg',
      description: 'Samsung Galaxy A54 Purple'
    ),
  ];

  List<Phone> userCart = [];

  List<Phone> getPhoneList() {
    return phoneShop;
  }

  List<Phone> getUserCart() {
    return userCart;
  }

  void addItemToCart(Phone phone) {
    userCart.add(phone);
    notifyListeners();
  }

  void removeItemFromCart(Phone phone) {
    userCart.remove(phone);
    notifyListeners();
  }
}