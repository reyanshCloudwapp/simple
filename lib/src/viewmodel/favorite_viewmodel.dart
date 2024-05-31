import 'package:simple/src/data/model/product.dart';
import 'package:flutter/cupertino.dart';

import '../data/service/product_service.dart';

class FavoriteViewModel extends ChangeNotifier {
  ProductService? productService = ProductService();
  List<Product> list = [];
  List<Product>? listProduct;
  int curr = 1;
  bool isFound = true;
  bool isLoading = true;
  String message = '';
  int productCount = 0;

  Future<List<Product>>? getListProduct() {
    isLoading = true;
    notifyListeners();
    listProduct = productService?.listProduct;
    isLoading = false;
    notifyListeners();
  }

  onTapFavorite(Product product) {
    if (list.isEmpty) {
      list.add(product);
      productCount = list.length;
      print('EMPTY $productCount');
    } else {
      list.forEach((e) {
        if (e.isLike ?? false) {
          list.removeWhere((item) => item.id == product.id);
        } else {
          list.add(product);
        }
      });
    }
    notifyListeners();
  }

  isFavorite(Product product) {
    return list.contains(product);
  }
}
