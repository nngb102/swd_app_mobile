import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/model/order_package/package_orders_model.dart';

part 'orders_state.freezed.dart';

@freezed
class OrdersState with _$OrdersState {
  factory OrdersState({
    required List<PackageOrderModel> packageOrders,
  }) = _KidProfileState;

  const OrdersState._();

  factory OrdersState.initial() => OrdersState(
        packageOrders: [],
      );
}
