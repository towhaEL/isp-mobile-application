import 'package:injectable/injectable.dart';
import 'package:isp_selfcare/domain/repository/network/network_repository.dart';
import 'package:isp_selfcare/domain/use_cases/base/base_use_case.dart';

@singleton
class RestartRouterUseCase with BaseUseCaseWithParams<void, int> {
  RestartRouterUseCase(this._networkRepository);

  final NetworkRepository _networkRepository;

  @override
  Future<void> execute(int params) =>
      _networkRepository.restartRouter(connectionId: params);
}
