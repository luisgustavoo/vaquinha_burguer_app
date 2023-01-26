import 'package:flutter/material.dart';
import 'package:vaquinha_burguer_app/app/core/ui/theme/theme_config.dart';
import 'package:vaquinha_burguer_app/app/pages/splash/splash_page.dart';

class VaquinhaBurguerApp extends StatelessWidget {
  const VaquinhaBurguerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeConfig.themeData,
      title: 'Vaquinha Burguer',
      routes: {
        '/': (context) => const SplashPage(),
      },
    );
  }
}
