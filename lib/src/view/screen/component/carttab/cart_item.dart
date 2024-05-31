import 'package:simple/src/const/app_font.dart';
import 'package:simple/src/data/model/cart.dart';
import 'package:simple/src/viewmodel/cart_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartItem extends StatelessWidget {
  final Cart order;

  const CartItem({Key? key, required this.order}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cartViewModel = Provider.of<CartViewModel>(context, listen: true);
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(order.product!.urlImage![0]),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    order.product!.title!,
                    overflow: TextOverflow.ellipsis,
                    style: AppFont.semiBold.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Row(
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Color: ",
                              style: AppFont.regular.copyWith(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14),
                              children: [
                                TextSpan(
                                  text: order.product!.inventory![0].color,
                                  style: AppFont.regular.copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Size: ",
                              style: AppFont.regular.copyWith(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14),
                              children: [
                                TextSpan(
                                  text: order.product!.inventory![0].size,
                                  style: AppFont.regular.copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.grey.withOpacity(.1),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              onPressed: () {
                                cartViewModel.increQuantity(
                                  order,
                                  order.product!.inventory![0],
                                );
                              },
                              style: ButtonStyle(
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              ),
                              icon: Icon(
                                Icons.add,
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Flexible(
                              flex: 1,
                              child: Text(order.quantity.toString()),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            IconButton(
                              onPressed: () {
                                cartViewModel.deceQuanity(order);
                              },
                              style: ButtonStyle(
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              ),
                              icon: Icon(
                                Icons.remove,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Text("${order.product!.price!} \$")
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
