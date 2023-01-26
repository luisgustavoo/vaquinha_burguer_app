import 'package:flutter/material.dart';
import 'package:vaquinha_burguer_app/app/core/ui/widgets/buttton_app.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Column(
        children: [
          ButttonApp(label: 'Button'),
          TextFormField(),
          ElevatedButton(
            onPressed: () {},
            child: Text('a'),
          ),
        ],
      ),
    );
  }
}
