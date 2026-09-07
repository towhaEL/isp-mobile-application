part of '../base/base_response.dart';

/// Mirrors the backend's token pair. The refresh token is persisted so a
/// returning customer is not asked to sign in every time the short-lived
/// access token lapses.
@freezed
abstract class AuthTokenResponseModel with _$AuthTokenResponseModel {
  const factory AuthTokenResponseModel({
    String? accessToken,
    String? refreshToken,
    String? tokenType,
    int? expiresIn,
  }) = _AuthTokenResponseModel;

  factory AuthTokenResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AuthTokenResponseModelFromJson(json);
}
