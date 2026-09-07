part of '../base/base_request.dart';

@freezed
abstract class WifiSettingsRequestModel with _$WifiSettingsRequestModel {
  const factory WifiSettingsRequestModel({
    required String ssid,
    required String password,
    required WifiBand band,
    required bool guestNetworkEnabled,
  }) = _WifiSettingsRequestModel;

  factory WifiSettingsRequestModel.fromJson(Map<String, dynamic> json) =>
      _$WifiSettingsRequestModelFromJson(json);
}
