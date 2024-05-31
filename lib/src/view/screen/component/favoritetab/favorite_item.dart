import 'package:cached_network_image/cached_network_image.dart';
import 'package:simple/src/const/app_colors.dart';
import 'package:simple/src/const/app_font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FavoriteItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
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
                    imageUrl:
                        'https://thevou.com/wp-content/uploads/2021/05/Current-fashion-trends-wtvox.com-Boiler-suits-01.jpg',
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
                  ),
                  /*
                  child: Image.network(
                    'https://thevou.com/wp-content/uploads/2021/05/Current-fashion-trends-wtvox.com-Boiler-suits-01.jpg',
                    // 'https://dongphuctop.com/wp-content/uploads/2018/07/Rocker-Fashion-Style-683x1024.jpg',
                    fit: BoxFit.cover,
                    width: 160,
                    height: 220,
                  ),

                   */
                ),
              ),
              Positioned(
                  top: 5,
                  left: 7,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    decoration: BoxDecoration(
                      color: AppColors.primaryColorRed,
                      borderRadius: BorderRadius.circular(90),
                    ),
                    child: Text(
                      '20%',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  )),
              Positioned(
                  top: 5,
                  right: 7,
                  child: Icon(
                    Icons.delete_forever,
                    color: Colors.white,
                  )),
              Positioned(
                right: 0,
                bottom: 0,
                width: 40,
                height: 40,
                child: Container(
                  padding: EdgeInsets.all(9),
                  decoration: BoxDecoration(
                    color: AppColors.primaryColorRed,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(.2),
                          offset: Offset(1, 1),
                          spreadRadius: 3,
                          blurRadius: 3),
                    ],
                  ),
                  child: SvgPicture.asset(
                    'assets/image/bag_active.svg',
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              RatingBar.builder(
                initialRating: 5,
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
          SizedBox(
            height: 4,
          ),
          Text(
            'Category',
            style: AppFont.regular.copyWith(
              fontSize: 13,
              color: Colors.grey,
              fontWeight: FontWeight.normal,
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            'Title',
            style: AppFont.bold.copyWith(
              fontSize: 17,
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            '1000',
            style: AppFont.bold
                .copyWith(fontSize: 14, color: AppColors.primaryColorRed),
          ),
        ],
      )),
    );
  }
}
