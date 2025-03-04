import 'package:flutter/material.dart';
import 'package:softui_dev/soft_ui.dart';

class GridHome extends StatelessWidget {
  const GridHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0F0F0),
      appBar: AppBar(
        title: const Text('Container'),
      ),
      body: Center(
        child: SoftuiGridView(
          crossAxisCount: 3,
          itemBuilder: (context, index) {
            return SoftuiContainer(
              margin: EdgeInsets.all(10),
            );
          },
          itemCount: 10,
        ),
      ),
    );
  }
}
