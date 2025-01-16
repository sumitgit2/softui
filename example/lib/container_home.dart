import 'package:flutter/material.dart';
import 'package:softui_dev/soft_ui.dart';

class ContainerHome extends StatelessWidget {
  const ContainerHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0F0F0),
      appBar: AppBar(
        title: const Text('Container'),
      ),
      body: Center(
        child: NeuContainer(
          child: Icon(
            Icons.home,
            size: 50,
            color: Colors.grey[500],
          ),
        ),
      ),
    );
  }
}
