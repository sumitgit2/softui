import 'package:flutter/material.dart';

class NeuIconButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final IconData icon;
  final double size;
  final Color? color;
  final BorderRadius? borderRadius;
  final double iconSize;
  final List<BoxShadow>? boxShadow;
  final EdgeInsets? margin, padding;

  const NeuIconButton({
    Key? key,
    this.onPressed,
    required this.icon,
    this.size = 60,
    this.color,
    this.borderRadius,
    this.iconSize = 24,
    this.boxShadow,
    this.margin,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: size,
        width: size,
        margin: margin,
        padding: padding ?? const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: color ?? const Color(0xFFE0E0E0),
          borderRadius: borderRadius ?? BorderRadius.circular(size / 2),
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
        child: Center(
          child: Icon(
            icon,
            size: iconSize,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
