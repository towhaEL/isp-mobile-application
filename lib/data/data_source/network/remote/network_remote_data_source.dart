import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:isp_selfcare/data/data_source/network/network_data_source.dart';
import 'package:isp_selfcare/data/models/request_model/base/base_request.dart';
import 'package:isp_selfcare/data/models/response_model/base/base_response.dart';
import 'package:isp_selfcare/domain/enum/dio_client_type.dart';
import 'package:retrofit/retrofit.dart';

part 'network_remote_data_source.g.dart';

@RestApi()
@LazySingleton()
abstract class NetworkRemoteDataSource implements NetworkDataSource {
  @factoryMethod
  factory NetworkRemoteDataSource(@Named(DioClientType.authenticated) Dio dio) =
      _NetworkRemoteDataSource;

  @override
  @GET('/api/v1/selfcare/connections/{id}/wifi')
  Future<WifiSettingsResponseModel> getWifiSettings({
    @Path('id') required int connectionId,
  });

  @override
  @PUT('/api/v1/selfcare/connections/{id}/wifi')
  Future<WifiSettingsResponseModel> saveWifiSettings({
    @Path('id') required int connectionId,
    @Body() required WifiSettingsRequestModel request,
  });

  @override
  @GET('/api/v1/selfcare/connections/{id}/devices')
  Future<List<ConnectedDeviceResponseModel>> getDevices({
    @Path('id') required int connectionId,
  });

  @override
  @PUT('/api/v1/selfcare/connections/{id}/devices/{deviceId}/blocked')
  Future<void> setDeviceBlocked({
    @Path('id') required int connectionId,
    @Path('deviceId') required String deviceId,
    @Field('blocked') required bool blocked,
  });

  @override
  @POST('/api/v1/selfcare/connections/{id}/router/restart')
  Future<void> restartRouter({@Path('id') required int connectionId});

  @override
  @GET('/api/v1/selfcare/connections/{id}/usage')
  Future<UsageSummaryResponseModel> getUsage({
    @Path('id') required int connectionId,
    @Query('range') required String range,
  });

  @override
  @POST('/api/v1/selfcare/connections/{id}/speed-test')
  Future<SpeedTestResponseModel> runSpeedTest({
    @Path('id') required int connectionId,
  });
}
