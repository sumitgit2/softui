import 'package:flutter/material.dart';

class NeuButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget? child;
  final Color? color;
  final BorderRadius? borderRadius;
  final double? height;
  final double? width;
  final List<BoxShadow>? boxShadow;
  final EdgeInsets? margin, padding;

  const NeuButton({
    Key? key,
    this.onPressed,
    this.child,
    this.color,
    this.borderRadius,
    this.height = 50,
    this.width = 200,
    this.boxShadow,
    this.margin,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height,
        width: width,
        margin: margin,
        padding: padding ?? const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: color ?? const Color(0xFFE0E0E0),
          borderRadius: borderRadius ?? BorderRadius.circular(15),
          boxShadow: boxShadow ??
              [
                BoxShadow(
                  color: const Color(0xFF737373),
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
        child: Center(child: child),
      ),
    );
  }
}
