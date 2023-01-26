import 'package:flutter/material.dart';
import 'package:vaquinha_burguer_app/app/core/ui/styles/colors_app.dart';
import 'package:vaquinha_burguer_app/app/core/ui/styles/text_styles_app.dart';

class StylesApp {
  StylesApp._();

  factory StylesApp.i() {
    _instance ??= StylesApp._();
    return _instance!;
  }

  static StylesApp? _instance;

  // static StylesApp get i {
  //   _instance ??= StylesApp._();
  //   return _instance!;
  // }

  ButtonStyle get primaryButton => ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7),
        ),
        backgroundColor: ColorsApp.i().primary,
        textStyle: TextStylesApp.i().textButtonLabel,
      );
}

extension StylesAppExtentions on BuildContext {
  StylesApp get stylesApp => StylesApp.i();
}
