import 'package:flutter_dotenv/flutter_dotenv.dart';

class Env {
  Env._();

  factory Env.i() {
    _instance ??= Env._();
    return _instance!;
  }

  static Env? _instance;

  Future<void> load() => dotenv.load();

  String? operator [](String key) => dotenv.env[key];
}
