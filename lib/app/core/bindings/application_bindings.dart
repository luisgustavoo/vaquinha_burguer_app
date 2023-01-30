import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vaquinha_burguer_app/app/core/rest_client/custom_dio.dart';

class ApplicationBindings extends StatelessWidget {
  const ApplicationBindings({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (context) => CustomDio(),
        ),
      ],
      child: child,
    );
  }
}
