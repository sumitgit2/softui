import 'package:flutter/material.dart';
import 'package:softui_dev/soft_ui.dart';

class GridTextHome extends StatelessWidget {
  GridTextHome({super.key});

  final List<Map<String, dynamic>> items = [
    {'icon': Icons.water_drop_outlined, 'text': 'Water Control'},
    {'icon': Icons.vpn_key_outlined, 'text': 'Key Control'},
    {'icon': Icons.lightbulb_outline, 'text': 'Light Control'},
    {'icon': Icons.settings, 'text': 'All Setting'},
    {'icon': Icons.auto_mode_outlined, 'text': 'Automatic'},
    {'icon': Icons.thermostat_outlined, 'text': 'Temperature'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0F0F0),
      appBar: AppBar(
        title: const Text('Container'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: NeuGridviewWithText(
          items: items,
          crossAxisSpacing: 10,
          mainAxisSpacing: 0,
        ),
      ),
    );
  }
}
