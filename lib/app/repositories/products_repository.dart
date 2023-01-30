import 'package:vaquinha_burguer_app/app/models/products_model.dart';

abstract class ProductsRepository {
  Future<List<ProductsModel>> findAllProducts();
}
