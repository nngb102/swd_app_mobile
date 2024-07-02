import 'package:freezed_annotation/freezed_annotation.dart';


part 'package_orders_model.freezed.dart';
part 'package_orders_model.g.dart';

@freezed
class PackageOrderModel with _$PackageOrderModel {
  @JsonSerializable(explicitToJson: true)
  factory PackageOrderModel({
    @JsonKey(name: 'packageInPeriodIds') List? packageInPeriodIds,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'kidId') int? kidId,
    @JsonKey(name: 'packageId') int? packageId,
    @JsonKey(name: 'totalPrice') String? totalPrice,
    @JsonKey(name: 'nameOfAdult') String? nameOfAdult,
    @JsonKey(name: 'nameOfKid') String? nameOfKid,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'address') String? address,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'createdAt') String? createdAt,
    @JsonKey(name: 'updatedAt') String? updatedAt,
  }) = _PackageOrderModel;

  factory PackageOrderModel.fromJson(Map<String, dynamic> json) =>
      _$PackageOrderModelFromJson(json);

  const PackageOrderModel._();
}
