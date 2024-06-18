import 'package:freezed_annotation/freezed_annotation.dart';

import 'order_model.dart';

part 'order_response.freezed.dart';
part 'order_response.g.dart';

@freezed
class OrderResponse with _$OrderResponse {
  @JsonSerializable(explicitToJson: true)
  factory OrderResponse({
    @JsonKey(name: 'success') required bool success,
    @JsonKey(name: 'message') required String message,
    @JsonKey(name: 'order') required OrderModel order,
  }) = _ThemeResponse;

  factory OrderResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderResponseFromJson(json);

  const OrderResponse._();
}
