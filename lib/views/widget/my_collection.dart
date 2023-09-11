// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCollectionWidget extends StatelessWidget {
  Function()? onTap;
  String imageCollection;
  String textCollection;
  MyCollectionWidget({
    super.key,
    required this.onTap,
    required this.imageCollection,
    required this.textCollection,
  });

  bool isTouch = true;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: width * 0.03,
            top: height * 0.015,
            bottom: height * 0.015,
          ),
          child: GestureDetector(
            onTap: onTap,
            child: SizedBox(
              height: height * 0.45,
              width: width / 2.3 * 1.05,
              //color: Colors.blue,
              child: Column(
                children: [
                  Hero(
                    tag: imageCollection,
                    child: Container(
                      height: height * 0.36,
                      width: width / 2,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(imageCollection),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: height * 0.03,
                      left: width * 0.02,
                      right: width * 0.02,
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      height: height * 0.06,
                      width: width / 2,
                      decoration: BoxDecoration(
                        //color: Colors.black,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: Colors.black,
                          width: 1.5,
                        ),
                      ),
                      child: Text(
                        textCollection,
                        style: GoogleFonts.anton(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
