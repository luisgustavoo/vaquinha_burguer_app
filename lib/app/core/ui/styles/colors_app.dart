import 'package:flutter/material.dart';

class ColorsApp {
  ColorsApp._();

  factory ColorsApp.i() {
    _instance ??= ColorsApp._();
    return _instance!;
  }

  static ColorsApp? _instance;

  // static ColorsApp get i {
  //   _instance ??= ColorsApp._();
  //   return _instance!;
  // }

  Color get primary => const Color(0xFF007D21);

  Color get secundary => const Color(0xFFF88B0C);

  Color get backgroundScaffold => const Color(0xFF140E0E);

  Color get textLightColor => const Color(0xFF222222);

  Color get priceColor => const Color(0xFFF88B0C);
}

extension ColorsAppExtension on BuildContext {
  ColorsApp get colors => ColorsApp.i();
}
