import 'package:flutter/material.dart';

class SoftuiListView extends StatelessWidget {
  final IndexedWidgetBuilder itemBuilder;
  final int itemCount;

  const SoftuiListView({
    Key? key,
    required this.itemBuilder,
    required this.itemCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: itemBuilder,
      itemCount: itemCount,
    );
  }
}
