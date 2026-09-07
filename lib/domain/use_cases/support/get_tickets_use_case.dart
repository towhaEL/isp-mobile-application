import 'package:injectable/injectable.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';
import 'package:isp_selfcare/domain/repository/support/support_repository.dart';
import 'package:isp_selfcare/domain/use_cases/base/base_use_case.dart';

@singleton
class GetTicketsUseCase with BaseUseCase<List<TicketEntity>> {
  GetTicketsUseCase(this._supportRepository);

  final SupportRepository _supportRepository;

  @override
  Future<List<TicketEntity>> execute() => _supportRepository.getTickets();
}
