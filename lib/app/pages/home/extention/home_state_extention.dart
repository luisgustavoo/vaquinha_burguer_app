import 'package:vaquinha_burguer_app/app/models/products_model.dart';
import 'package:vaquinha_burguer_app/app/pages/home/home_state.dart';

extension MatchState on HomeState {
  void match<T>({
    T Function(HomeStateStatus status)? status,
    T Function(List<ProductsModel> products)? products,
  }) {
    if (status != null) {
      status(this.status);
    }

    if (this.products.isNotEmpty && products != null) {
      products(this.products);
    }
  }
}

extension Match on HomeStateStatus {
  T? matchAny<T>({
    required T Function() any,
    T Function()? initial,
    T Function()? loading,
    T Function()? success,
    T Function()? error,
  }) {
    if (this == HomeStateStatus.initial && initial != null) {
      return initial();
    }

    if (this == HomeStateStatus.loading && loading != null) {
      return loading();
    }

    if (this == HomeStateStatus.success && success != null) {
      return success();
    }

    if (this == HomeStateStatus.error && error != null) {
      return error();
    }

    return any();

    // switch (this) {
    //   case HomeStateStatus.intial:
    //     if (intial != null) {
    //       return intial();
    //     }
    //     throw Exception(
    //       'HomeStateStatus.match failed, found no match for: $this',
    //     );

    //   case HomeStateStatus.loading:
    //     if (loading != null) {
    //       return loading();
    //     }
    //     throw Exception(
    //       'HomeStateStatus.match failed, found no match for: $this',
    //     );
    //   case HomeStateStatus.success:
    //     if (success != null) {
    //       return success();
    //     }
    //     throw Exception(
    //       'HomeStateStatus.match failed, found no match for: $this',
    //     );
    //   case HomeStateStatus.error:
    //     if (success != null) {
    //       return success();
    //     }
    //     throw Exception(
    //       'HomeStateStatus.match failed, found no match for: $this',
    //     );
    // }
  }
}
