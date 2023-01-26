import 'package:flutter/material.dart';

class ButttonApp extends StatelessWidget {
  const ButttonApp({
    required this.label,
    this.onPressed,
    this.width,
    this.height = 50,
    super.key,
  });

  final String label;
  final VoidCallback? onPressed;
  final double? width;
  final double height;
  static const double _minimumWidthSize = 64;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(width ?? _minimumWidthSize, height),
      ),
      onPressed: onPressed,
      child: Text(label),
    );
  }
}
