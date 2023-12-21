import 'package:firebase_auth/firebase_auth.dart';

import 'cart.dart';

class UserModel {
  final String email;
   List<CartItem> cart;
   final User? user;

  UserModel({required this.email, required this.cart,this.user});
}
