import 'package:flutter/material.dart';

class NeuListView extends StatelessWidget {
  final IndexedWidgetBuilder itemBuilder;
  final int itemCount;

  const NeuListView({
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
