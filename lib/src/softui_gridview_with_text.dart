import 'package:flutter/material.dart';
import 'softui_container.dart';

class SoftuiGridviewWithText extends StatelessWidget {
  final List<Map<String, dynamic>> items;
  final int crossAxisCount;
  final double crossAxisSpacing;
  final double mainAxisSpacing;

  const SoftuiGridviewWithText({
    Key? key,
    required this.items,
    this.crossAxisCount = 3,
    this.crossAxisSpacing = 20.0,
    this.mainAxisSpacing = 20.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: crossAxisSpacing,
        mainAxisSpacing: mainAxisSpacing,
        childAspectRatio: 0.8,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SoftuiContainer(
              height: 100,
              width: 100,
              child: Icon(
                item['icon'],
                size: 40,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 8),
            Text(
              item['text'],
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ],
        );
      },
    );
  }
}
