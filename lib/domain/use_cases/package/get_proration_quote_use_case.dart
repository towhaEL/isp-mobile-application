import 'package:injectable/injectable.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';
import 'package:isp_selfcare/domain/repository/package/package_repository.dart';
import 'package:isp_selfcare/domain/use_cases/base/base_use_case.dart';

@singleton
class GetProrationQuoteUseCase
    with
        BaseUseCaseWithParams<
          ProrationQuoteEntity,
          ({int connectionId, int packageId})
        > {
  GetProrationQuoteUseCase(this._packageRepository);

  final PackageRepository _packageRepository;

  @override
  Future<ProrationQuoteEntity> execute(
    ({int connectionId, int packageId}) params,
  ) => _packageRepository.getProrationQuote(
    connectionId: params.connectionId,
    packageId: params.packageId,
  );
}
