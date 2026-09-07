import 'package:injectable/injectable.dart';
import 'package:isp_selfcare/data/data_source/base/factory/data_source_factory.dart';
import 'package:isp_selfcare/data/data_source/package/package_data_source.dart';
import 'package:isp_selfcare/data/models/request_model/base/base_request.dart';
import 'package:isp_selfcare/data/remapper/package_response_to_entity.dart';
import 'package:isp_selfcare/data/remapper/selfcare_response_to_entity.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';
import 'package:isp_selfcare/domain/repository/package/package_repository.dart';

@Singleton(as: PackageRepository)
class PackageRepositoryImpl implements PackageRepository {
  PackageRepositoryImpl(DataSourceFactory factory)
    : _dataSource = factory.createPackageDataSource();

  final PackageDataSource _dataSource;

  @override
  Future<List<PackageEntity>> getPackages() async =>
      (await _dataSource.getPackages()).toPackageEntities();

  @override
  Future<ProrationQuoteEntity> getProrationQuote({
    required int connectionId,
    required int packageId,
  }) async => (await _dataSource.getProrationQuote(
    connectionId: connectionId,
    packageId: packageId,
  )).toEntity();

  @override
  Future<void> changePackage({
    required int connectionId,
    required int packageId,
  }) => _dataSource.changePackage(
    connectionId: connectionId,
    request: ChangePackageRequestModel(packageId: packageId),
  );
}
