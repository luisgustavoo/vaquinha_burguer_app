// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'package:vaquinha_burguer_app/app/models/products_model.dart';

enum HomeStateStatus { initial, loading, success, error }

class HomeState extends Equatable {
  const HomeState({
    required this.status,
    required this.products,
    this.errorMessage,
  });

  const HomeState.initial()
      : status = HomeStateStatus.initial,
        products = const <ProductsModel>[],
        errorMessage = null;

  final HomeStateStatus status;
  final List<ProductsModel> products;
  final String? errorMessage;

  @override
  List<Object?> get props => [status, products];

  HomeState copyWith({
    HomeStateStatus? status,
    List<ProductsModel>? products,
    String? errorMessage,
  }) {
    return HomeState(
      status: status ?? this.status,
      products: products ?? this.products,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
