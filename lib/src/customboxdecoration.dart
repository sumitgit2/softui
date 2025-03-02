import 'package:flutter/material.dart';

class CustomBoxDecoration {
  static BoxDecoration defaultDecoration() {
    return BoxDecoration(
      color: Colors.grey[300],
      borderRadius: BorderRadius.circular(15),
      boxShadow: [
        BoxShadow(
          color: Colors.grey[500]!,
          offset: const Offset(5.0, 5.0),
          blurRadius: 15.0,
          spreadRadius: 1.0,
        ),
        const BoxShadow(
          color: Colors.white,
          offset: Offset(-5.0, -5.0),
          blurRadius: 15.0,
          spreadRadius: 1.0,
        ),
      ],
    );
  }
}
