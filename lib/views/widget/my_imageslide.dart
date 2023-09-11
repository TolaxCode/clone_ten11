// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class MyImageSlideWidget extends StatelessWidget {
  MyImageSlideWidget({super.key});
  List<String> listImageSlide = [
    'assets/image/t15.jpg',
    'assets/image/t16.jpg',
    'assets/image/t17.jpg',
    'assets/image/t18.jpg',
    'assets/image/t19.jpg',
    'assets/image/t20.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        ImageSlideshow(
          height: height * 0.35,
          isLoop: true,
          autoPlayInterval: 4000,
          indicatorBackgroundColor: Colors.white,
          indicatorColor: Colors.black,
          indicatorRadius: 5,
          children: [
            for (int i = 0; i < listImageSlide.length; i++)
              Container(
                // width: width,
                // height: height * 0.3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(listImageSlide[i]),
                    fit: BoxFit.cover,
                  ),
                ),
              )
          ],
        ),
      ],
    );
  }
}
