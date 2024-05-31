import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HeaderPage extends StatelessWidget {
  List<String> listImage = [
    // 'https://www.girlteencare.com/wp-content/uploads/2021/04/dd51d83736d0741a3a78ad68e8077805.jpg',
    // 'https://www.efasheen.com/wp-content/uploads/2020/12/Pantone-Colors.png',
    'https://farm4.staticflickr.com/3319/3211138044_9232086442.jpg',
    'https://farm3.staticflickr.com/2042/2203964933_f1b80a18ba.jpg',
    'https://images.pexels.com/photos/8443648/pexels-photo-8443648.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  ];

  PageController controller = PageController(
    initialPage: 0,

  );

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 300,
        enlargeCenterPage: true,
        autoPlay: true,
      ),
      items: listImage.map((e) {
        return CachedNetworkImage(
          imageUrl: e,
          progressIndicatorBuilder: (context, url, downloadProgress) =>
              Center(
                child: SizedBox(
                  height: 24,
                  width: 24,
                  child: CircularProgressIndicator(
                    value: downloadProgress.progress,
                  ),
                ),
              ),
          errorWidget: (context, url, error) => Icon(Icons.error),
          fit: BoxFit.contain,
        );
        return Image.network(
          e,
          fit: BoxFit.cover,
        );
      }).toList(),
    );
  }
}
