import 'package:flutter/material.dart';
import 'package:vaquinha_burguer_app/app/core/config/env/env.dart';
import 'package:vaquinha_burguer_app/app/vaquinha_burguer_app.dart';

Future<void> main() async {
  await Env.i().load();
  runApp(const VaquinhaBurguerApp());
}
