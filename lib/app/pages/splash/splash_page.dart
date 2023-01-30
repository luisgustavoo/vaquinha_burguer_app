import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vaquinha_burguer_app/app/core/ui/styles/colors_app.dart';
import 'package:vaquinha_burguer_app/app/core/ui/widgets/buttton_app.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.backgroundScaffold,
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 190.h,
          ),
          Image.asset('assets/images/logo.png'),
          SizedBox(
            height: 72.h,
          ),
          ButttonApp(
            label: 'Acessar',
            height: 34.h,
            width: 249.w,
            onPressed: () {
              Navigator.of(context).popAndPushNamed('/home');
            },
          ),
          const Spacer(),
          Image.asset('assets/images/lanche.png'),
        ],
      ),
    );
  }
}
