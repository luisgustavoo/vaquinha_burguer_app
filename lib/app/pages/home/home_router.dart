import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vaquinha_burguer_app/app/core/rest_client/custom_dio.dart';
import 'package:vaquinha_burguer_app/app/pages/home/home_controller.dart';
import 'package:vaquinha_burguer_app/app/pages/home/home_page.dart';
import 'package:vaquinha_burguer_app/app/repositories/products_repository_impl.dart';

class HomeRouter {
  HomeRouter._();

  static Widget get page {
    return MultiProvider(
      providers: [
        Provider(
          create: (context) => ProductsRepositoryImpl(
            dio: context.read<CustomDio>(),
          ),
        ),
        Provider(
          create: (context) => HomeController(
            productsRepository: context.read<ProductsRepositoryImpl>(),
          ),
        )
      ],
      child: const HomePage(),
    );
  }
}
