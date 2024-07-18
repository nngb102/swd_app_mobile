// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'profile_request.g.dart';

@JsonSerializable()
class ProfileRequest {
  ProfileRequest({
    required this.fullName,
    required this.descriptionHobby,
    required this.yob,
    required this.gender,
    required this.color,
    required this.type,
    required this.material,
    required this.toyOrigin,
  });

  factory ProfileRequest.fromJson(Map<String, dynamic> json) =>
      _$ProfileRequestFromJson(json);
  Map<String, dynamic> toJson() => _$ProfileRequestToJson(this);

  @JsonKey(name: 'fullName')
  final String fullName;

  @JsonKey(name: 'descriptionHobby')
  final String descriptionHobby;

  @JsonKey(name: 'yob')
  final String yob;

  @JsonKey(name: 'gender')
  final String gender;

  @JsonKey(name: 'color')
  final String color;

  @JsonKey(name: 'type')
  final String type;

  @JsonKey(name: 'material')
  final String material;

  @JsonKey(name: 'toyOrigin')
  final String toyOrigin;
}
