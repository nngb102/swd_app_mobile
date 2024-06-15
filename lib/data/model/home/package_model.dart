import 'package:freezed_annotation/freezed_annotation.dart';

part 'package_model.freezed.dart';
part 'package_model.g.dart';

@freezed
class Package with _$Package {
  @JsonSerializable(explicitToJson: true)
  factory Package({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'price') String? price,
    @JsonKey(name: 'numberOfSend') String? numberOfSend,
    @JsonKey(name: 'status') bool? status,
    @JsonKey(name: 'createdAt') String? createdAt,
    @JsonKey(name: 'updatedAt') String? updatedAt,
  }) = _Package;

  factory Package.fromJson(Map<String, dynamic> json) =>
      _$PackageFromJson(json);

  const Package._();

  factory Package.initial() => Package(
        id: 0,
        image: '',
        name: '',
        description: '',
        price: '',
        numberOfSend: '',
        status: false,
        createdAt: '',
        updatedAt: '',
      );
}
