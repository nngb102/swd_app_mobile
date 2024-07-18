// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'amount_model.g.dart';

@JsonSerializable()
class AmountModel {
  AmountModel({
    required this.amount,
  });

  factory AmountModel.fromJson(Map<String, dynamic> json) =>
      _$AmountModelFromJson(json);
  Map<String, dynamic> toJson() => _$AmountModelToJson(this);

  @JsonKey(name: 'amount')
  final int amount;
}
