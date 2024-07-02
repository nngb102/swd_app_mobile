import 'package:freezed_annotation/freezed_annotation.dart';

import 'package_orders_model.dart';

part 'order_package_by_user_response.freezed.dart';
part 'order_package_by_user_response.g.dart';

@freezed
class OrderPackageByUserResponse with _$OrderPackageByUserResponse {
  @JsonSerializable(explicitToJson: true)
  factory OrderPackageByUserResponse({
    @JsonKey(name: 'packageOrders')
    required List<PackageOrderModel>? packageOrders,
    @JsonKey(name: 'success') bool? success,
    @JsonKey(name: 'message') String? message,
  }) = _OrderPackageByUserResponse;

  factory OrderPackageByUserResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderPackageByUserResponseFromJson(json);

  const OrderPackageByUserResponse._();
}
