import 'package:injectable/injectable.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';
import 'package:isp_selfcare/domain/repository/support/support_repository.dart';
import 'package:isp_selfcare/domain/use_cases/base/base_use_case.dart';

@singleton
class CreateTicketUseCase
    with
        BaseUseCaseWithParams<
          TicketEntity,
          ({
            int connectionId,
            TicketIssueType issueType,
            String description,
            String? preferredVisitTime,
          })
        > {
  CreateTicketUseCase(this._supportRepository);

  final SupportRepository _supportRepository;

  @override
  Future<TicketEntity> execute(
    ({
      int connectionId,
      TicketIssueType issueType,
      String description,
      String? preferredVisitTime,
    })
    params,
  ) => _supportRepository.createTicket(
    connectionId: params.connectionId,
    issueType: params.issueType,
    description: params.description,
    preferredVisitTime: params.preferredVisitTime,
  );
}
