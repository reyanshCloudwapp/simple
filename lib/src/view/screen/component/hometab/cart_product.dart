import 'package:cached_network_image/cached_network_image.dart';
import 'package:simple/src/const/app_colors.dart';
import 'package:simple/src/const/app_font.dart';
import 'package:simple/src/data/model/product.dart';
import 'package:simple/src/viewmodel/product_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';

class CartProduct extends StatefulWidget {
  final Product? product;
  final int? index;

  // final VoidCallback onFavoritePressed;

  const CartProduct({Key? key, this.product, this.index}) : super(key: key);

  @override
  _CartProductState createState() => _CartProductState();
}

class _CartProductState extends State<CartProduct> {
  ProductViewModel? productViewModel;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10, right: 2),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: CachedNetworkImage(
                    imageUrl: widget.product!.urlImage![0],
                    progressIndicatorBuilder:
                        (context, url, downloadProgress) => Center(
                      child: SizedBox(
                        width: 24,
                        height: 24,
                        child: CircularProgressIndicator(
                          value: downloadProgress.progress,
                        ),
                      ),
                    ),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                    fit: BoxFit.cover,
                    width: 160,
                    height: 220,
                  ),
                  /*
                  child: Image.network(
                    widget.product!.urlImage![0],
                    fit: BoxFit.cover,
                    width: 160,
                    height: 220,
                  ),

                   */
                ),
              ),
              // Positioned(
              //   top: 5,
              //   left: 10,
              //   child: Container(
              //     padding: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
              //     decoration: BoxDecoration(
              //       color: AppColors.primaryColorRed,
              //       borderRadius: BorderRadius.circular(90),
              //     ),
              //     child: Text('20%',style: TextStyle(
              //       color: Colors.white,
              //       fontSize: 12
              //     ),),
              //   )
              // ),
              Consumer<ProductViewModel>(
                builder: (BuildContext context, ProductViewModel value,
                    Widget? child) {
                  return Positioned(
                    right: 0,
                    bottom: 0,
                    child: GestureDetector(
                      onTap: () {
                        // if (widget.product?.isLike == 0 ) {
                        //   setState(() {
                        //     widget.product?.isLike = 1;
                        //   });
                        // }
                        // value.likeProduct(widget.product!);
                        setState(() {
                          widget.product!.isLike = !widget.product!.isLike!;
                        });
                      },
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(.2),
                              offset: Offset(1, 1),
                              spreadRadius: 1,
                            ),
                          ],
                        ),
                        child: Icon(
                          widget.product!.isLike!
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color: widget.product!.isLike!
                              ? AppColors.primaryColorRed
                              : AppColors.primaryColorGray,
                          size: 19,
                        ),
                      ),
                    ),
                  );
                },
              )
            ],
          ),
          Row(
            children: [
              RatingBar.builder(
                initialRating: widget.product!.rating ?? 0,
                allowHalfRating: true,
                direction: Axis.horizontal,
                itemSize: 15,
                itemCount: 5,
                ignoreGestures: true,
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
              SizedBox(
                width: 5,
              ),
              Text('(10)')
            ],
          ),
          Text(
            widget.product!.category!,
            style: AppFont.regular.copyWith(
              fontSize: 13,
              color: Colors.grey,
              fontWeight: FontWeight.normal,
            ),
          ),
          Text(
            widget.product!.title!,
            style: AppFont.bold.copyWith(
              fontSize: 17,
            ),
          ),
          Text(
            widget.product!.price.toString(),
            style: AppFont.bold
                .copyWith(fontSize: 14, color: AppColors.primaryColorRed),
          ),
        ],
      )),
    );
  }
}
