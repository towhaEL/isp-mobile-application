part of '../base/base_response.dart';

@freezed
abstract class PackageResponseModel with _$PackageResponseModel {
  const factory PackageResponseModel({
    int? id,
    String? name,
    String? code,
    String? description,
    int? downloadKbps,
    int? uploadKbps,
    @NullableDecimalConverter() double? price,
    String? currency,
    int? validityDays,
    bool? isActive,
    String? rateLimit,
  }) = _PackageResponseModel;

  factory PackageResponseModel.fromJson(Map<String, dynamic> json) =>
      _$PackageResponseModelFromJson(json);
}
