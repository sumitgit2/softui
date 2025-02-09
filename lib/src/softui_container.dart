import 'package:flutter/material.dart';

class SoftuiContainer extends StatelessWidget {
  final double height;
  final double width;
  final BorderRadius? borderRadius;
  final Widget? child;
  final Color? color;
  final List<BoxShadow>? boxShadow;
  final EdgeInsets? margin, padding;

  const SoftuiContainer({
    Key? key,
    this.height = 100,
    this.width = 100,
    this.borderRadius,
    this.child,
    this.color,
    this.boxShadow,
    this.margin,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        color: color ?? Color(0xFFE0E0E0),
        borderRadius: borderRadius ?? BorderRadius.circular(15),
        boxShadow: boxShadow ??
            [
              BoxShadow(
                color: Color(0xFF737373),
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
      ),
      child: child,
    );
  }
}
