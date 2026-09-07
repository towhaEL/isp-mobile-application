import 'package:isp_selfcare/domain/entity/base/base_entity.dart';

abstract class PackageRepository {
  Future<List<PackageEntity>> getPackages();

  Future<ProrationQuoteEntity> getProrationQuote({
    required int connectionId,
    required int packageId,
  });

  Future<void> changePackage({
    required int connectionId,
    required int packageId,
  });
}
