// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class MySmallButtonWidget extends StatelessWidget {
  Color colorImage;
  String? image;
  Function()? ontap;
  MySmallButtonWidget({
    super.key,
    required this.colorImage,
    required this.image,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: EdgeInsets.only(top: height * 0.01),
        child: Container(
          alignment: Alignment.bottomCenter,
          width: width / 3,
          height: height * 0.07,
          decoration: BoxDecoration(
            //color: colorImage,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.black,
              width: 1.5,
            ),
            image: DecorationImage(
              image: AssetImage(image!),
            ),
          ),
        ),
      ),
    );
  }
}
