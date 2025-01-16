import 'package:flutter/material.dart';
import 'package:softui_dev/soft_ui.dart';

class ListHome extends StatelessWidget {
  const ListHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0F0F0),
      appBar: AppBar(
        title: const Text('Container'),
      ),
      body: Center(
        child: NeuListView(
          itemBuilder: (context, index) {
            return NeuContainer(
              margin: EdgeInsets.all(10),
            );
          },
          itemCount: 10,
        ),
      ),
    );
  }
}
