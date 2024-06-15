import 'package:freezed_annotation/freezed_annotation.dart';

import 'package_model.dart';

part 'package_response.freezed.dart';
part 'package_response.g.dart';

@freezed
class PackageResponse with _$PackageResponse {
  @JsonSerializable(explicitToJson: true)
  factory PackageResponse({
    @JsonKey(name: 'success') required bool success,
    @JsonKey(name: 'message') required String message,
    @JsonKey(name: 'packages') required List<Package> packages,
  }) = _PackageResponse;

  factory PackageResponse.fromJson(Map<String, dynamic> json) =>
      _$PackageResponseFromJson(json);

  const PackageResponse._();

  factory PackageResponse.initial() => PackageResponse(
        success: true,
        message: '',
        packages: [],
      );
}
