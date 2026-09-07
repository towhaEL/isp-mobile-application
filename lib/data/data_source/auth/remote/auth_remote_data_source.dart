import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:isp_selfcare/data/data_source/auth/auth_data_source.dart';
import 'package:isp_selfcare/data/models/request_model/base/base_request.dart';
import 'package:isp_selfcare/data/models/response_model/base/base_response.dart';
import 'package:isp_selfcare/domain/enum/dio_client_type.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_remote_data_source.g.dart';

@RestApi()
@LazySingleton()
abstract class AuthRemoteDataSource implements AuthDataSource {
  @factoryMethod
  factory AuthRemoteDataSource(@Named(DioClientType.unauthenticated) Dio dio) =
      _AuthRemoteDataSource;

  @override
  @POST('/api/v1/auth/login')
  Future<AuthTokenResponseModel> login(@Body() LoginRequestModel inputModel);

  @override
  @POST('/api/v1/auth/refresh')
  Future<AuthTokenResponseModel> refresh(
    @Body() RefreshRequestModel inputModel,
  );

  @override
  @POST('/api/v1/auth/logout')
  Future<void> logout(@Body() RefreshRequestModel inputModel);
}
