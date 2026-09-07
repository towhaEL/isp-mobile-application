import 'package:isp_selfcare/domain/entity/base/base_entity.dart';

abstract class NetworkRepository {
  Future<WifiSettingsEntity> getWifiSettings({required int connectionId});

  Future<WifiSettingsEntity> saveWifiSettings({
    required int connectionId,
    required WifiSettingsEntity settings,
  });

  Future<List<ConnectedDeviceEntity>> getDevices({required int connectionId});

  Future<void> setDeviceBlocked({
    required int connectionId,
    required String deviceId,
    required bool blocked,
  });

  Future<void> restartRouter({required int connectionId});

  Future<UsageSummaryEntity> getUsage({
    required int connectionId,
    required UsageRange range,
  });

  Future<SpeedTestResultEntity> runSpeedTest({required int connectionId});
}
