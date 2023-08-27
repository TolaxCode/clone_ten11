//ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Delete image successful')));


import 'package:flutter/material.dart';

void _showSnackbar(BuildContext context) {
    final snackbar = SnackBar(
      content: Text('Hello, Snackbar!'),
      duration: Duration(seconds: 2), // Adjust the duration as needed
    );

  }
