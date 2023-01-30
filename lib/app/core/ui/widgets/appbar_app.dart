import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppbarApp extends AppBar {
  AppbarApp({double elevation = 1, super.key})
      : super(
          elevation: elevation,
          title: Image.asset('assets/images/logo.png', width: 80.w),
        );
}
