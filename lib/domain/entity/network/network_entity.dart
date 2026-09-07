part of '../base/base_entity.dart';

/// Which radio the router should broadcast on.
@JsonEnum(fieldRename: FieldRename.snake)
enum WifiBand { ghz24, ghz5, both }

/// The router settings a customer is allowed to change from the app.
@freezed
abstract class WifiSettingsEntity with _$WifiSettingsEntity {
  const factory WifiSettingsEntity({
    required String ssid,
    required String password,
    required WifiBand band,
    @Default(false) bool guestNetworkEnabled,
    String? routerModel,
    String? guestSsid,
  }) = _WifiSettingsEntity;
}

@JsonEnum(fieldRename: FieldRename.snake)
enum DeviceKind { mobile, laptop, tv, camera, unknown }

/// Something currently attached to the customer's network.
@freezed
abstract class ConnectedDeviceEntity with _$ConnectedDeviceEntity {
  const factory ConnectedDeviceEntity({
    required String id,
    required String name,
    required DeviceKind kind,
    required String ipAddress,
    @Default(0) int throughputMbps,
    @Default(false) bool isBlocked,
  }) = _ConnectedDeviceEntity;
}

/// A window of usage history. The plans are unmetered, so this is reference
/// data for the customer, not a quota — nothing here throttles or bills.
@freezed
abstract class UsageSummaryEntity with _$UsageSummaryEntity {
  const factory UsageSummaryEntity({
    required UsageRange range,
    required double downloadGb,
    required double uploadGb,
    @Default(<UsageBucketEntity>[]) List<UsageBucketEntity> buckets,
  }) = _UsageSummaryEntity;

  const UsageSummaryEntity._();

  double get totalGb => downloadGb + uploadGb;

  /// The tallest stacked bar, used to scale the chart.
  double get peakBucketGb => buckets.isEmpty
      ? 0
      : buckets
            .map((b) => b.downloadGb + b.uploadGb)
            .reduce((a, b) => a > b ? a : b);
}

@JsonEnum(fieldRename: FieldRename.snake)
enum UsageRange { sevenDays, fifteenDays, thirtyDays }

/// One column of the usage chart.
@freezed
abstract class UsageBucketEntity with _$UsageBucketEntity {
  const factory UsageBucketEntity({
    required String label,
    required double downloadGb,
    required double uploadGb,
  }) = _UsageBucketEntity;
}

/// The outcome of an in-app speed test.
@freezed
abstract class SpeedTestResultEntity with _$SpeedTestResultEntity {
  const factory SpeedTestResultEntity({
    required double downloadMbps,
    required double uploadMbps,
    required int pingMs,
    required int jitterMs,
    required DateTime measuredAt,
    String? serverLabel,
  }) = _SpeedTestResultEntity;

  const SpeedTestResultEntity._();

  /// What fraction of the sold speed actually arrived. The design leads with
  /// this ("You are getting 98% of your 80 Mbps plan"), which only means
  /// something against the plan the customer bought.
  int percentOfPlan(int planMbps) =>
      planMbps <= 0 ? 0 : ((downloadMbps / planMbps) * 100).round();
}
