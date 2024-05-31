import 'package:simple/src/data/model/product.dart';
import 'package:flutter/cupertino.dart';

class FavoriteViewModel extends ChangeNotifier {
  List<Product> list = [];
  int curr = 1;
  bool isFound = true;
  String message = '';
  int productCount = 0;

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
