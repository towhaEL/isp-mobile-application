import 'package:injectable/injectable.dart';
import 'package:isp_selfcare/domain/repository/network/network_repository.dart';
import 'package:isp_selfcare/domain/use_cases/base/base_use_case.dart';

@singleton
class SetDeviceBlockedUseCase
    with
        BaseUseCaseWithParams<
          void,
          ({int connectionId, String deviceId, bool blocked})
        > {
  SetDeviceBlockedUseCase(this._networkRepository);

  final NetworkRepository _networkRepository;

  @override
  Future<void> execute(
    ({int connectionId, String deviceId, bool blocked}) params,
  ) => _networkRepository.setDeviceBlocked(
    connectionId: params.connectionId,
    deviceId: params.deviceId,
    blocked: params.blocked,
  );
}
