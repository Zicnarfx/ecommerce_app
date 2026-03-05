import 'package:flutter/material.dart';
import 'package:ecommerce_app/models/product.dart';



class CartItem {
  final Product product;
  int quantity;

  CartItem ({required this.product, this.quantity = 1});
}

class CartProvider with ChangeNotifier{
  final Map<String, CartItem> _cartItems = {};



}