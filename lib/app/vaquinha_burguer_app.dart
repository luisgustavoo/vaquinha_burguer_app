import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vaquinha_burguer_app/app/core/bindings/application_bindings.dart';
import 'package:vaquinha_burguer_app/app/core/ui/theme/theme_config.dart';
import 'package:vaquinha_burguer_app/app/pages/home/home_router.dart';
import 'package:vaquinha_burguer_app/app/pages/splash/splash_page.dart';

class VaquinhaBurguerApp extends StatelessWidget {
  const VaquinhaBurguerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return ApplicationBindings(
          child: MaterialApp(
            theme: ThemeConfig.themeData,
            title: 'Vaquinha Burguer',
            routes: {
              '/': (context) => const SplashPage(),
              '/home': (context) => HomeRouter.page,
            },
          ),
        );
      },
    );
  }
}
