import 'package:equatable/equatable.dart';

import 'package:vaquinha_burguer_app/app/models/products_model.dart';

enum HomeStateStatus { initial, loading, success, error }

class HomeState extends Equatable {
  const HomeState({
    required this.status,
    required this.products,
  });

  const HomeState.initial()
      : status = HomeStateStatus.initial,
        products = const <ProductsModel>[];

  final HomeStateStatus status;
  final List<ProductsModel> products;

  @override
  List<Object?> get props => [status, products];

  HomeState copyWith({
    HomeStateStatus? status,
    List<ProductsModel>? products,
  }) {
    return HomeState(
      status: status ?? this.status,
      products: products ?? this.products,
    );
  }
}
