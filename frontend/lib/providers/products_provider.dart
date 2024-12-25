import 'package:flutter/material.dart';

class ProductsProvider with ChangeNotifier {
  List<String> _products = ["Producto 1", "Producto 2", "Producto 3"];

  List<String> get products => _products;

  void addProduct(String product) {
    _products.add(product);
    notifyListeners();
  }
}
