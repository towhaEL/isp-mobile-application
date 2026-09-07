import 'package:injectable/injectable.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';
import 'package:isp_selfcare/domain/repository/support/support_repository.dart';
import 'package:isp_selfcare/domain/use_cases/base/base_use_case.dart';

@singleton
class GetTicketMessagesUseCase
    with BaseUseCaseWithParams<List<TicketMessageEntity>, String> {
  GetTicketMessagesUseCase(this._supportRepository);

  final SupportRepository _supportRepository;

  @override
  Future<List<TicketMessageEntity>> execute(String params) =>
      _supportRepository.getTicketMessages(ticketId: params);
}
