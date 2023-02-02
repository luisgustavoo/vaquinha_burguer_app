import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vaquinha_burguer_app/app/pages/home/home_state.dart';
import 'package:vaquinha_burguer_app/app/repositories/products_repository.dart';

class HomeController extends Cubit<HomeState> {
  HomeController({
    required this.productsRepository,
  }) : super(const HomeState.initial());

  final ProductsRepository productsRepository;

  Future<void> findAllProducts() async {
    try {
      emit(state.copyWith(status: HomeStateStatus.loading));
      final products = await productsRepository.findAllProducts();
      emit(state.copyWith(status: HomeStateStatus.success, products: products));
    } on Exception catch (e, s) {
      log('Erro ao buscar produtos', error: e, stackTrace: s);
      emit(
        state.copyWith(
          status: HomeStateStatus.error,
          errorMessage: 'Erro ao buscar produtos',
        ),
      );
    }
  }
}
