import 'package:injectable/injectable.dart';
import 'package:isp_selfcare/data/data_source/base/factory/data_source_factory.dart';
import 'package:isp_selfcare/data/data_source/support/support_data_source.dart';
import 'package:isp_selfcare/data/models/request_model/base/base_request.dart';
import 'package:isp_selfcare/data/remapper/selfcare_response_to_entity.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';
import 'package:isp_selfcare/domain/repository/support/support_repository.dart';

@Singleton(as: SupportRepository)
class SupportRepositoryImpl implements SupportRepository {
  SupportRepositoryImpl(DataSourceFactory factory)
    : _dataSource = factory.createSupportDataSource();

  final SupportDataSource _dataSource;

  @override
  Future<LineCheckEntity> getLineCheck({required int connectionId}) async =>
      (await _dataSource.getLineCheck(connectionId: connectionId)).toEntity();

  @override
  Future<List<SupportContactEntity>> getContacts() async =>
      (await _dataSource.getContacts()).toEntities();

  @override
  Future<List<TicketEntity>> getTickets() async =>
      (await _dataSource.getTickets()).toEntities();

  @override
  Future<List<TicketMessageEntity>> getTicketMessages({
    required String ticketId,
  }) async =>
      (await _dataSource.getTicketMessages(ticketId: ticketId)).toEntities();

  @override
  Future<TicketEntity> createTicket({
    required int connectionId,
    required TicketIssueType issueType,
    required String description,
    String? preferredVisitTime,
  }) async => (await _dataSource.createTicket(
    CreateTicketRequestModel(
      connectionId: connectionId,
      issueType: issueType,
      description: description,
      preferredVisitTime: preferredVisitTime,
    ),
  )).toEntity();

  @override
  Future<TicketMessageEntity> replyToTicket({
    required String ticketId,
    required String body,
  }) async => (await _dataSource.replyToTicket(
    ticketId: ticketId,
    request: TicketReplyRequestModel(body: body),
  )).toEntity();
}
