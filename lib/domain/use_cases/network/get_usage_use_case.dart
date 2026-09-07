import 'package:injectable/injectable.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';
import 'package:isp_selfcare/domain/repository/network/network_repository.dart';
import 'package:isp_selfcare/domain/use_cases/base/base_use_case.dart';

@singleton
class GetUsageUseCase
    with
        BaseUseCaseWithParams<
          UsageSummaryEntity,
          ({int connectionId, UsageRange range})
        > {
  GetUsageUseCase(this._networkRepository);

  final NetworkRepository _networkRepository;

  @override
  Future<UsageSummaryEntity> execute(
    ({int connectionId, UsageRange range}) params,
  ) => _networkRepository.getUsage(
    connectionId: params.connectionId,
    range: params.range,
  );
}
