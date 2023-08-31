import 'package:flutter/material.dart';
import 'package:shopping_ui_project/constant/fonts.dart';

class MyTextFieldWidget extends StatelessWidget {
  late bool obscureText;
  Color colorTextField;
  String hintText;
  IconData? suffixIcon;
  IconData? prefixIcon;
  TextEditingController controller;
  Function()? onTap;
  MyTextFieldWidget({
    super.key,
    required this.colorTextField,
    required this.hintText,
    required this.suffixIcon,
    required this.prefixIcon,
    required this.obscureText,
    required this.controller,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(
        top: height * 0.03,
      ),
      child: Container(
        alignment: Alignment.center,
        height: height * 0.075,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 1.5,
          ),
        ),
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(prefixIcon),
            hintText: hintText,
            hintStyle: fontsTextfield,
            suffixIcon: IconButton(
              onPressed: onTap,
              icon: Icon(suffixIcon),
            ),
          ),
          obscureText: obscureText,
          controller: controller,
        ),
      ),
    );
  }
}
