import 'package:injectable/injectable.dart';
import 'package:isp_selfcare/data/data_source/mock_data/selfcare_fixtures.dart';
import 'package:isp_selfcare/data/data_source/network/network_data_source.dart';
import 'package:isp_selfcare/data/models/request_model/base/base_request.dart';
import 'package:isp_selfcare/data/models/response_model/base/base_response.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';

/// Offline router and usage data, keyed per connection so switching lines does
/// not carry one line's SSID onto another.
@LazySingleton()
class NetworkMockDataSource implements NetworkDataSource {
  static const _latency = Duration(milliseconds: 320);

  final Map<int, WifiSettingsResponseModel> _wifi = {};
  final Map<int, List<ConnectedDeviceResponseModel>> _devices = {};

  Future<void> get _wait => Future<void>.delayed(_latency);

  @override
  Future<WifiSettingsResponseModel> getWifiSettings({
    required int connectionId,
  }) async {
    await _wait;
    return _wifi[connectionId] ??= SelfcareFixtures.wifiSettings;
  }

  @override
  Future<WifiSettingsResponseModel> saveWifiSettings({
    required int connectionId,
    required WifiSettingsRequestModel request,
  }) async {
    await _wait;
    final current = _wifi[connectionId] ?? SelfcareFixtures.wifiSettings;
    return _wifi[connectionId] = current.copyWith(
      ssid: request.ssid,
      password: request.password,
      band: request.band,
      guestNetworkEnabled: request.guestNetworkEnabled,
    );
  }

  @override
  Future<List<ConnectedDeviceResponseModel>> getDevices({
    required int connectionId,
  }) async {
    await _wait;
    return _devices[connectionId] ??= [...SelfcareFixtures.devices];
  }

  @override
  Future<void> setDeviceBlocked({
    required int connectionId,
    required String deviceId,
    required bool blocked,
  }) async {
    await _wait;
    final devices = _devices[connectionId] ??= [...SelfcareFixtures.devices];
    _devices[connectionId] = [
      for (final device in devices)
        if (device.id == deviceId)
          device.copyWith(isBlocked: blocked)
        else
          device,
    ];
  }

  @override
  Future<void> restartRouter({required int connectionId}) async {
    await Future<void>.delayed(const Duration(milliseconds: 600));
  }

  @override
  Future<UsageSummaryResponseModel> getUsage({
    required int connectionId,
    required String range,
  }) async {
    await _wait;
    final parsed = UsageRange.values.where((r) => r.name == range).firstOrNull;
    return SelfcareFixtures.usage(parsed ?? UsageRange.sevenDays);
  }

  @override
  Future<SpeedTestResponseModel> runSpeedTest({
    required int connectionId,
  }) async {
    // A real test takes seconds and the UI animates a progress bar against it;
    // the mock waits long enough for that animation to be worth watching.
    await Future<void>.delayed(const Duration(milliseconds: 1400));
    return SelfcareFixtures.speedTest;
  }
}
