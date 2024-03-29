import 'dart:developer';

import 'package:vaquinha_burguer_app/app/core/errors/repository_exception.dart';
import 'package:vaquinha_burguer_app/app/core/rest_client/custom_dio.dart';
import 'package:vaquinha_burguer_app/app/models/products_model.dart';
import 'package:vaquinha_burguer_app/app/repositories/products_repository.dart';

class ProductsRepositoryImpl implements ProductsRepository {
  ProductsRepositoryImpl({
    required CustomDio dio,
  }) : _dio = dio;

  final CustomDio _dio;

  @override
  Future<List<ProductsModel>> findAllProducts() async {
    try {
      final result = await _dio.unAuth().get<List<dynamic>>('/products');

      if (result.data != null) {
        final list = List<Map<String, dynamic>>.from(result.data!);
        return list.map(ProductsModel.fromMap).toList();
      }

      return <ProductsModel>[];
    } on Exception catch (e, s) {
      log('Erro ao bucar produtos', error: e, stackTrace: s);
      throw RepositoryException(message: 'Erro ao buscar produtos');
    }
  }
}
