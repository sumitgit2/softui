import 'package:flutter/material.dart';

class SoftuiGridView extends StatelessWidget {
  final int crossAxisCount;
  final double childAspectRatio;
  final IndexedWidgetBuilder itemBuilder;
  final int itemCount;

  const SoftuiGridView({
    Key? key,
    required this.crossAxisCount,
    this.childAspectRatio = 1.0,
    required this.itemBuilder,
    required this.itemCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: itemBuilder,
      itemCount: itemCount,
    );
  }
}
