part of '../base/base_request.dart';

/// Sent to both refresh and logout: the server revokes the presented refresh
/// token rather than trusting the client to forget it.
@freezed
abstract class RefreshRequestModel with _$RefreshRequestModel {
  const factory RefreshRequestModel({required String refreshToken}) =
      _RefreshRequestModel;

  factory RefreshRequestModel.fromJson(Map<String, dynamic> json) =>
      _$RefreshRequestModelFromJson(json);
}
