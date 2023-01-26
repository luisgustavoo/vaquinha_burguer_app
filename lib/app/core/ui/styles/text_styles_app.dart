import 'package:flutter/material.dart';

class TextStylesApp {
  TextStylesApp._();

  factory TextStylesApp.i() {
    _instance ??= TextStylesApp._();
    return _instance!;
  }

  // static TextStylesApp get i {
  //   _instance ??= TextStylesApp._();
  //   return _instance!;
  // }

  static TextStylesApp? _instance;

  String get font => 'mplus1';

  TextStyle get textLight =>
      TextStyle(fontWeight: FontWeight.w300, fontFamily: font);

  TextStyle get textRegular =>
      TextStyle(fontWeight: FontWeight.normal, fontFamily: font);

  TextStyle get textMedium =>
      TextStyle(fontWeight: FontWeight.w500, fontFamily: font);

  TextStyle get textSemiBold =>
      TextStyle(fontWeight: FontWeight.w600, fontFamily: font);

  TextStyle get textBold =>
      TextStyle(fontWeight: FontWeight.bold, fontFamily: font);

  TextStyle get textExtraBold =>
      TextStyle(fontWeight: FontWeight.w800, fontFamily: font);

  TextStyle get textButtonLabel => textBold.copyWith(fontSize: 14);
}

extension TextStylesAppExtentions on BuildContext {
  TextStylesApp get textStylesApp => TextStylesApp.i();
}
