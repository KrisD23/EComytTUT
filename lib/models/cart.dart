import 'package:e_comm_yt/models/watch.dart';
import 'package:flutter/material.dart%20';

class Cart extends ChangeNotifier {
  // list of watches for sale
  List<Watch> watchShop = [
    Watch(
        name: 'Watch 1',
        imagePath: 'lib/images/1.png',
        price: '232',
        description: 'description'),
    Watch(
        name: 'Watch 2',
        imagePath: 'lib/images/2.png',
        price: '232',
        description: 'description'),
    Watch(
        name: 'Watch 3',
        imagePath: 'lib/images/3.png',
        price: '232',
        description: 'description'),
    Watch(
        name: 'Watch 4',
        imagePath: 'lib/images/4.png',
        price: '232',
        description: 'description'),
    Watch(
        name: 'Watch 5',
        imagePath: 'lib/images/5.png',
        price: '232',
        description: 'description'),
  ];

  // list of items in user cart

  List<Watch> cart = [];

  // get llist of items for sale
  List<Watch> getWatchList() {
    return watchShop;
  }

  // get cart
  List<Watch> getUserCart() {
    return cart;
  }

  // add items to cart
  void addToCart(Watch watch) {
    cart.add(watch);
    notifyListeners();
  }

  // remove items from cart
  void removeFromCart(Watch watch) {
    cart.remove(watch);
    notifyListeners();
  }
}
