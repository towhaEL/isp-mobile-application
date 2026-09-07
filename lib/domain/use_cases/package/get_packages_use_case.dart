import 'package:injectable/injectable.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';
import 'package:isp_selfcare/domain/repository/package/package_repository.dart';
import 'package:isp_selfcare/domain/use_cases/base/base_use_case.dart';

@singleton
class GetPackagesUseCase with BaseUseCase<List<PackageEntity>> {
  GetPackagesUseCase(this._packageRepository);

  final PackageRepository _packageRepository;

  @override
  Future<List<PackageEntity>> execute() => _packageRepository.getPackages();
}
