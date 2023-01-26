import 'package:flutter/material.dart';
import 'package:vaquinha_burguer_app/app/core/ui/styles/colors_app.dart';
import 'package:vaquinha_burguer_app/app/core/ui/styles/text_styles_app.dart';

class ThemeConfig {
  ThemeConfig._();

  static final themeData = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.black),
    ),
    primaryColor: ColorsApp.i().primary,
    colorScheme: ColorScheme.fromSeed(
      seedColor: ColorsApp.i().primary,
      primary: ColorsApp.i().primary,
      secondary: ColorsApp.i().secundary,
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: Colors.white,
      filled: true,
      isDense: true,
      contentPadding: const EdgeInsets.all(13),
      border: _defaultBorder(),
      focusedBorder: _defaultBorder(),
      enabledBorder: _defaultBorder(),
      labelStyle: TextStylesApp.i().textRegular.copyWith(color: Colors.black),
      errorStyle: TextStylesApp.i().textRegular.copyWith(color: Colors.red),
    ),
  );

  static OutlineInputBorder _defaultBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(7),
      borderSide: BorderSide(color: Colors.grey[400]!),
    );
  }
}
