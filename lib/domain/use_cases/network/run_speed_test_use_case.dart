import 'package:injectable/injectable.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';
import 'package:isp_selfcare/domain/repository/network/network_repository.dart';
import 'package:isp_selfcare/domain/use_cases/base/base_use_case.dart';

@singleton
class RunSpeedTestUseCase
    with BaseUseCaseWithParams<SpeedTestResultEntity, int> {
  RunSpeedTestUseCase(this._networkRepository);

  final NetworkRepository _networkRepository;

  @override
  Future<SpeedTestResultEntity> execute(int params) =>
      _networkRepository.runSpeedTest(connectionId: params);
}
