part of '../base/base_response.dart';

@freezed
abstract class WifiSettingsResponseModel with _$WifiSettingsResponseModel {
  const factory WifiSettingsResponseModel({
    String? ssid,
    String? password,
    WifiBand? band,
    bool? guestNetworkEnabled,
    String? routerModel,
    String? guestSsid,
  }) = _WifiSettingsResponseModel;

  factory WifiSettingsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$WifiSettingsResponseModelFromJson(json);
}

@freezed
abstract class ConnectedDeviceResponseModel
    with _$ConnectedDeviceResponseModel {
  const factory ConnectedDeviceResponseModel({
    String? id,
    String? name,
    DeviceKind? kind,
    String? ipAddress,
    int? throughputMbps,
    bool? isBlocked,
  }) = _ConnectedDeviceResponseModel;

  factory ConnectedDeviceResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ConnectedDeviceResponseModelFromJson(json);
}

@freezed
abstract class UsageBucketResponseModel with _$UsageBucketResponseModel {
  const factory UsageBucketResponseModel({
    String? label,
    double? downloadGb,
    double? uploadGb,
  }) = _UsageBucketResponseModel;

  factory UsageBucketResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UsageBucketResponseModelFromJson(json);
}

@freezed
abstract class UsageSummaryResponseModel with _$UsageSummaryResponseModel {
  const factory UsageSummaryResponseModel({
    UsageRange? range,
    double? downloadGb,
    double? uploadGb,
    @Default(<UsageBucketResponseModel>[])
    List<UsageBucketResponseModel> buckets,
  }) = _UsageSummaryResponseModel;

  factory UsageSummaryResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UsageSummaryResponseModelFromJson(json);
}

@freezed
abstract class SpeedTestResponseModel with _$SpeedTestResponseModel {
  const factory SpeedTestResponseModel({
    double? downloadMbps,
    double? uploadMbps,
    int? pingMs,
    int? jitterMs,
    DateTime? measuredAt,
    String? serverLabel,
  }) = _SpeedTestResponseModel;

  factory SpeedTestResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SpeedTestResponseModelFromJson(json);
}
