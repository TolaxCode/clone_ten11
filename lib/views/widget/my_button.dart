import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_ui_project/views/widget/fonts.dart';

class MyButtonWidget extends StatelessWidget {
  Color color;
  Color colortext;
  String text;
  IconData? icon;
  Function()? ontap;
  MyButtonWidget({
    super.key,
    required this.color,
    required this.text,
    required this.icon,
    required this.ontap,
    required this.colortext,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: height * 0.075,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[900],
        boxShadow: const [
          BoxShadow(
            blurRadius: 1,
          )
        ],
      ),
      child: CupertinoButton(
        onPressed: ontap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: fontsButton,
            ),
          ],
        ),
      ),
    );
  }
}
