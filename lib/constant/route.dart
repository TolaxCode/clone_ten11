import 'package:flutter/material.dart';
import 'package:shopping_ui_project/constant/fonts.dart';

void nextScreen(context, page) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (context) => page,
    ),
  );
}

void showMessageSuccess(
  context,
) async {
  await showDialog(
    traversalEdgeBehavior: TraversalEdgeBehavior.closedLoop,
    context: context,
    builder: (context) {
      return AlertDialog(
        backgroundColor: Colors.grey[300],
        title: Text(
          'Added Sucessfully',
          style: fontsNameShirtDetail,
        ),
        icon: const Icon(
          Icons.check,
          size: 30,
        ),
      );
    },
  );
}
