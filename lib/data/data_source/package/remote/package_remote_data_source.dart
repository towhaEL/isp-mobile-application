import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:isp_selfcare/data/data_source/package/package_data_source.dart';
import 'package:isp_selfcare/data/models/request_model/base/base_request.dart';
import 'package:isp_selfcare/data/models/response_model/base/base_response.dart';
import 'package:isp_selfcare/domain/enum/dio_client_type.dart';
import 'package:retrofit/retrofit.dart';

part 'package_remote_data_source.g.dart';

@RestApi()
@LazySingleton()
abstract class PackageRemoteDataSource implements PackageDataSource {
  @factoryMethod
  factory PackageRemoteDataSource(@Named(DioClientType.authenticated) Dio dio) =
      _PackageRemoteDataSource;

  @override
  @GET('/api/v1/selfcare/packages')
  Future<List<PackageResponseModel>> getPackages();

  @override
  @GET('/api/v1/selfcare/connections/{id}/proration')
  Future<ProrationQuoteResponseModel> getProrationQuote({
    @Path('id') required int connectionId,
    @Query('package_id') required int packageId,
  });

  @override
  @POST('/api/v1/selfcare/connections/{id}/change-package')
  Future<void> changePackage({
    @Path('id') required int connectionId,
    @Body() required ChangePackageRequestModel request,
  });
}
