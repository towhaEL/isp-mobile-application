part of '../base/base_request.dart';

/// Customer sign-in. [username] is the connection username or account code the
/// customer was issued — not an email, because plenty of subscribers never
/// gave one.
@freezed
abstract class LoginRequestModel with _$LoginRequestModel {
  const factory LoginRequestModel({
    required String username,
    required String password,
  }) = _LoginRequestModel;

  factory LoginRequestModel.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestModelFromJson(json);
}
