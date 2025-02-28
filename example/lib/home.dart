import 'package:example/container_home.dart';
import 'package:example/grid_home.dart';
import 'package:example/grid_text_home.dart';
import 'package:example/list_home.dart';
import 'package:flutter/material.dart';
import 'package:softui_dev/soft_ui.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0F0F0),
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SoftuiIconButton(icon: Icons.add),
                SizedBox(width: 30),
                SoftuiIconButton(icon: Icons.search),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            SoftuiButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ContainerHome(),
                  ),
                );
              },
              child: Text('Container Demo'),
            ),
            SizedBox(height: 20),
            SoftuiButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ListHome(),
                  ),
                );
              },
              child: Text('ListView Demo'),
            ),
            SizedBox(height: 20),
            SoftuiButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GridHome(),
                  ),
                );
              },
              child: Text('GridView Demo'),
            ),
            SizedBox(height: 20),
            SoftuiButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GridTextHome(),
                  ),
                );
              },
              child: Text('GridView with Text Demo'),
            ),
          ],
        ),
      ),
    );
  }
}
