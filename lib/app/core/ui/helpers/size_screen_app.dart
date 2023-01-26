import 'package:flutter/material.dart';

extension SizeScreenAppExtension on BuildContext {
  double get screeWidth => MediaQuery.of(this).size.width;
  double get screeHeight => MediaQuery.of(this).size.height;

  double percentWidth(double percent) => screeWidth * 0.5;

  double percentHeight(double percent) => screeWidth * 0.5;
}
