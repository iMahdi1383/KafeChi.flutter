import 'package:flutter/material.dart';

import 'package:kafechi/model/products_model.dart';
import 'package:kafechi/services/product_services.dart';

class ProductProvider extends ChangeNotifier {
  final _service = ProductService();
  bool isLoading = false;
  List<Product> _products = [];
  List<Product> get products => _products;

  Future<void> getProductsFromProvider() async {
    // ? تغییر استیت: نمایش لودینگ
    isLoading = true;
    notifyListeners();

    // ? منتظر دریافت دیتا از سرور
    final response = await _service.getProductsFromAPI();
    _products = response;

    // ? تغییر استیت: خروج از حالت لودینگ
    isLoading = false;
    notifyListeners();
  }
}
