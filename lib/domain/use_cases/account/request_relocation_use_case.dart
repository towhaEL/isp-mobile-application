import 'package:injectable/injectable.dart';
import 'package:isp_selfcare/domain/repository/account/account_repository.dart';
import 'package:isp_selfcare/domain/use_cases/base/base_use_case.dart';

@singleton
class RequestRelocationUseCase
    with
        BaseUseCaseWithParams<
          void,
          ({
            int connectionId,
            String areaId,
            String address,
            String preferredDate,
          })
        > {
  RequestRelocationUseCase(this._accountRepository);

  final AccountRepository _accountRepository;

  @override
  Future<void> execute(
    ({int connectionId, String areaId, String address, String preferredDate})
    params,
  ) => _accountRepository.requestRelocation(
    connectionId: params.connectionId,
    areaId: params.areaId,
    address: params.address,
    preferredDate: params.preferredDate,
  );
}
