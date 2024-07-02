import 'package:freezed_annotation/freezed_annotation.dart';

import 'order_model.dart';

part 'order_response.freezed.dart';
part 'order_response.g.dart';

@freezed
class OrderResponse with _$OrderResponse {
  @JsonSerializable(explicitToJson: true)
  factory OrderResponse({
    @JsonKey(name: 'order') required OrderModel order,
    @JsonKey(name: 'success') bool? success,
    @JsonKey(name: 'message') String? message,
  }) = _ThemeResponse;

  factory OrderResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderResponseFromJson(json);

  const OrderResponse._();
}
