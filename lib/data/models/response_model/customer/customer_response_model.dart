part of '../base/base_response.dart';

@freezed
abstract class CustomerResponseModel with _$CustomerResponseModel {
  const factory CustomerResponseModel({
    int? id,
    String? code,
    String? fullName,
    String? phone,
    String? alternatePhone,
    String? email,
    String? nationalId,
    String? notes,
    DateTime? createdAt,
  }) = _CustomerResponseModel;

  factory CustomerResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerResponseModelFromJson(json);
}
