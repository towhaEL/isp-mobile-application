import 'package:injectable/injectable.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';
import 'package:isp_selfcare/domain/repository/network/network_repository.dart';
import 'package:isp_selfcare/domain/use_cases/base/base_use_case.dart';

@singleton
class SaveWifiSettingsUseCase
    with
        BaseUseCaseWithParams<
          WifiSettingsEntity,
          ({int connectionId, WifiSettingsEntity settings})
        > {
  SaveWifiSettingsUseCase(this._networkRepository);

  final NetworkRepository _networkRepository;

  @override
  Future<WifiSettingsEntity> execute(
    ({int connectionId, WifiSettingsEntity settings}) params,
  ) => _networkRepository.saveWifiSettings(
    connectionId: params.connectionId,
    settings: params.settings,
  );
}
