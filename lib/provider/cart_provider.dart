import 'package:flutter/material.dart';

class CartItem {
  final String id;
  final String name;
  final String image;
  final double price;
  CartItem({
    @required this.id,
    @required this.name,
    @required this.image,
    @required this.price,
  });
}

class Cart with ChangeNotifier {
  Map<String, CartItem> _items = {};
  Map<String, CartItem> get items {
    return {..._items};
  }

  //total items in the cart
  int get itemCount {
    return _items == null ? 0 : _items.length;
  }

  //total amount
  double get totalAmount {
    var total = 0.0;
    _items.forEach((key, cartItem) {
      total += cartItem.price;
    });
    return total;
  }

  //adding items to the cart
  void addItem(String hotelId, String name, double price, String image) {
    if (_items.containsKey(hotelId)) {
      _items.update(
        hotelId,
        (existingCartItem) => CartItem(
            id: existingCartItem.id,
            name: existingCartItem.name,
            price: existingCartItem.price,
            image: existingCartItem.image),
      );
    } else {
      _items.putIfAbsent(
          hotelId,
          () => CartItem(
              id: DateTime.now().toString(),
              name: name,
              price: price,
              image: image));
    }
    notifyListeners();
  }

//remove item from cart
  void removeItem(String hotelId) {
    _items.remove(hotelId);
    notifyListeners();
  }

//clear cart
  void clearCart() {
    _items = {};
    notifyListeners();
  }
}
