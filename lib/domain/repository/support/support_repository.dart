import 'package:isp_selfcare/domain/entity/base/base_entity.dart';

abstract class SupportRepository {
  Future<LineCheckEntity> getLineCheck({required int connectionId});

  Future<List<SupportContactEntity>> getContacts();

  Future<List<TicketEntity>> getTickets();

  Future<List<TicketMessageEntity>> getTicketMessages({
    required String ticketId,
  });

  Future<TicketEntity> createTicket({
    required int connectionId,
    required TicketIssueType issueType,
    required String description,
    String? preferredVisitTime,
  });

  Future<TicketMessageEntity> replyToTicket({
    required String ticketId,
    required String body,
  });
}
