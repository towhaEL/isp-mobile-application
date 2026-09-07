import 'package:injectable/injectable.dart';
import 'package:isp_selfcare/data/data_source/base/factory/data_source_factory.dart';
import 'package:isp_selfcare/data/data_source/network/network_data_source.dart';
import 'package:isp_selfcare/data/models/request_model/base/base_request.dart';
import 'package:isp_selfcare/data/remapper/selfcare_response_to_entity.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';
import 'package:isp_selfcare/domain/repository/network/network_repository.dart';

@Singleton(as: NetworkRepository)
class NetworkRepositoryImpl implements NetworkRepository {
  NetworkRepositoryImpl(DataSourceFactory factory)
    : _dataSource = factory.createNetworkDataSource();

  final NetworkDataSource _dataSource;

  @override
  Future<WifiSettingsEntity> getWifiSettings({
    required int connectionId,
  }) async => (await _dataSource.getWifiSettings(
    connectionId: connectionId,
  )).toEntity();

  @override
  Future<WifiSettingsEntity> saveWifiSettings({
    required int connectionId,
    required WifiSettingsEntity settings,
  }) async => (await _dataSource.saveWifiSettings(
    connectionId: connectionId,
    request: WifiSettingsRequestModel(
      ssid: settings.ssid,
      password: settings.password,
      band: settings.band,
      guestNetworkEnabled: settings.guestNetworkEnabled,
    ),
  )).toEntity();

  @override
  Future<List<ConnectedDeviceEntity>> getDevices({
    required int connectionId,
  }) async =>
      (await _dataSource.getDevices(connectionId: connectionId)).toEntities();

  @override
  Future<void> setDeviceBlocked({
    required int connectionId,
    required String deviceId,
    required bool blocked,
  }) => _dataSource.setDeviceBlocked(
    connectionId: connectionId,
    deviceId: deviceId,
    blocked: blocked,
  );

  @override
  Future<void> restartRouter({required int connectionId}) =>
      _dataSource.restartRouter(connectionId: connectionId);

  @override
  Future<UsageSummaryEntity> getUsage({
    required int connectionId,
    required UsageRange range,
  }) async => (await _dataSource.getUsage(
    connectionId: connectionId,
    range: range.name,
  )).toEntity();

  @override
  Future<SpeedTestResultEntity> runSpeedTest({
    required int connectionId,
  }) async =>
      (await _dataSource.runSpeedTest(connectionId: connectionId)).toEntity();
}
