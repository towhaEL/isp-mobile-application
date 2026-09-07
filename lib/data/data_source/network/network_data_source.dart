import 'package:isp_selfcare/data/models/request_model/base/base_request.dart';
import 'package:isp_selfcare/data/models/response_model/base/base_response.dart';

abstract class NetworkDataSource {
  Future<WifiSettingsResponseModel> getWifiSettings({
    required int connectionId,
  });

  Future<WifiSettingsResponseModel> saveWifiSettings({
    required int connectionId,
    required WifiSettingsRequestModel request,
  });

  Future<List<ConnectedDeviceResponseModel>> getDevices({
    required int connectionId,
  });

  Future<void> setDeviceBlocked({
    required int connectionId,
    required String deviceId,
    required bool blocked,
  });

  Future<void> restartRouter({required int connectionId});

  Future<UsageSummaryResponseModel> getUsage({
    required int connectionId,
    required String range,
  });

  Future<SpeedTestResponseModel> runSpeedTest({required int connectionId});
}
