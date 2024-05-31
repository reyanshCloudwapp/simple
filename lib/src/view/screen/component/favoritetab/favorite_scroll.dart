import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../viewmodel/product_viewmodel.dart';
import 'favorite_item.dart';

class FavoriteScroll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var productProvider = Provider.of<ProductViewModel>(context, listen: true);

    return Container(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 190 / 300),
        itemCount: productProvider.listProduct?.where((item)=>item.isLike ?? false).length,
        itemBuilder: (_, index) {
          return FavoriteItem();
        },
      ),
    );
  }
}
