import 'package:dio/dio.dart';
import 'package:dio/native_imp.dart';
import 'package:vaquinha_burguer_app/app/core/config/env/env.dart';

class CustomDio extends DioForNative {
  CustomDio()
      : super(
          BaseOptions(
            baseUrl: Env.i()['base_url'] ?? '',
            connectTimeout: 5000,
            receiveTimeout: 60000,
          ),
        ) {
    interceptors.add(
      LogInterceptor(
        requestBody: true,
        responseBody: true,
      ),
    );
  }

  CustomDio auth() {
    return CustomDio();
  }

  CustomDio unAuth() {
    return CustomDio();
  }
}
