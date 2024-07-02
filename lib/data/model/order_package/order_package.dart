import 'package:json_annotation/json_annotation.dart';

part 'order_package.g.dart';

@JsonSerializable()
class OrderPackage {
  OrderPackage({
    required this.kidId,
    required this.totalPrice,
    required this.nameOfAdult,
    required this.nameOfKid,
    required this.phone,
    required this.email,
    required this.additionalNotes,
  });

  factory OrderPackage.fromJson(Map<String, dynamic> json) =>
      _$OrderPackageFromJson(json);
  Map<String, dynamic> toJson() => _$OrderPackageToJson(this);

  @JsonKey(name: 'kidId')
  final String kidId;

  @JsonKey(name: 'totalPrice')
  final double totalPrice;

  @JsonKey(name: 'nameOfAdult')
  final String nameOfAdult;

  @JsonKey(name: 'nameOfKid')
  final String nameOfKid;

  @JsonKey(name: 'phone')
  final String phone;

  @JsonKey(name: 'email')
  final String email;

  @JsonKey(name: 'additionalNotes')
  final String additionalNotes;
}
