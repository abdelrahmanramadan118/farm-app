// Example Cart Item Model
import 'package:farm_app/models/userModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CartItem {
  String productName;
  int quantity;
  CartItem({required this.productName, required this.quantity});
  Map<String, dynamic> toMap() {
    return {
      'productName': productName,
      'quantity': quantity,
      // Add other fields as needed
    };
  }

  CartItem.fromMap(Map<String, dynamic> map)
      : productName = map['productName'],
        quantity = map['quantity'];

  
}

// Example Cart Model
class CartModel extends ChangeNotifier {
  UserModel? _user;
  List<CartItem> _cart = [];

  List<CartItem> get cart => _cart;
  UserModel? get user => _user;

  void addToCart(CartItem item) {
    _cart.add(item);
    saveCartData();
    notifyListeners();
  }

  void removeFromCart(String productName) {
  print('Removing product: $productName');
   cart.removeWhere((item) => item.productName == productName);
    saveCartData();
    notifyListeners();
    print('After removal: ${_user?.cart}');
  
}



  Future<void> saveCartData() async {
    if (_user != null) {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(_user!.email)
          .set({'cart': _user!.cart.map((item) => item.toMap()).toList()});
      print('Cart data saved to Firestore');
      notifyListeners();
    }
  }
  
  Future<void> loadCartData() async {
    try {
    if (_user != null) {
      DocumentSnapshot<Map<String, dynamic>> document = await FirebaseFirestore
          .instance
          .collection('users')
          .doc(_user!.email)
          .get();

      if (document.exists) {
        _user!.cart = List.from(document.data()!['cart'])
            .map((item) => CartItem.fromMap(item))
            .toList();
        notifyListeners();
      }
    }
  } catch (error) {
    print('Error loading cart data: $error');
  }

  }
}
