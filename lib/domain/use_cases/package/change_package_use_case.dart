import 'package:injectable/injectable.dart';
import 'package:isp_selfcare/domain/repository/package/package_repository.dart';
import 'package:isp_selfcare/domain/use_cases/base/base_use_case.dart';

@singleton
class ChangePackageUseCase
    with BaseUseCaseWithParams<void, ({int connectionId, int packageId})> {
  ChangePackageUseCase(this._packageRepository);

  final PackageRepository _packageRepository;

  @override
  Future<void> execute(({int connectionId, int packageId}) params) =>
      _packageRepository.changePackage(
        connectionId: params.connectionId,
        packageId: params.packageId,
      );
}
