import 'package:injectable/injectable.dart';
import 'package:isp_selfcare/data/data_source/mock_data/selfcare_fixtures.dart';
import 'package:isp_selfcare/data/data_source/support/support_data_source.dart';
import 'package:isp_selfcare/data/models/request_model/base/base_request.dart';
import 'package:isp_selfcare/data/models/response_model/base/base_response.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';

/// Offline support desk. Tickets raised and replies sent during a session
/// persist, so the "open a ticket → view the thread → reply" path can be walked
/// end to end without a backend.
@LazySingleton()
class SupportMockDataSource implements SupportDataSource {
  SupportMockDataSource() {
    _tickets = [...SelfcareFixtures.tickets];
    _messages = {
      for (final ticket in _tickets)
        ticket.id!: ticket.id == '4402'
            ? [...SelfcareFixtures.ticketMessages]
            : <TicketMessageResponseModel>[],
    };
  }

  static const _latency = Duration(milliseconds: 320);

  late List<TicketResponseModel> _tickets;
  late Map<String, List<TicketMessageResponseModel>> _messages;

  Future<void> get _wait => Future<void>.delayed(_latency);

  @override
  Future<LineCheckResponseModel> getLineCheck({
    required int connectionId,
  }) async {
    await _wait;
    return SelfcareFixtures.lineCheck;
  }

  @override
  Future<List<SupportContactResponseModel>> getContacts() async {
    await _wait;
    return SelfcareFixtures.contacts;
  }

  @override
  Future<List<TicketResponseModel>> getTickets() async {
    await _wait;
    return _tickets;
  }

  @override
  Future<List<TicketMessageResponseModel>> getTicketMessages({
    required String ticketId,
  }) async {
    await _wait;
    return _messages[ticketId] ?? const [];
  }

  @override
  Future<TicketResponseModel> createTicket(
    CreateTicketRequestModel request,
  ) async {
    await _wait;
    final id = '${4400 + _tickets.length + 13}';
    final ticket = TicketResponseModel(
      id: id,
      title: _titleFor(request.issueType),
      status: TicketStatus.open,
      createdAt: DateTime.now(),
      connectionId: request.connectionId,
      eta: 'Reply within 2 hours',
    );
    _tickets = [ticket, ..._tickets];
    _messages[id] = [
      TicketMessageResponseModel(
        id: 'm-$id-1',
        body: request.description,
        sentAt: DateTime.now(),
        fromCustomer: true,
        authorLabel: 'You',
      ),
    ];
    return ticket;
  }

  @override
  Future<TicketMessageResponseModel> replyToTicket({
    required String ticketId,
    required TicketReplyRequestModel request,
  }) async {
    await _wait;
    final message = TicketMessageResponseModel(
      id: 'm-$ticketId-${DateTime.now().millisecondsSinceEpoch}',
      body: request.body,
      sentAt: DateTime.now(),
      fromCustomer: true,
      authorLabel: 'You',
    );
    _messages[ticketId] = [...?_messages[ticketId], message];

    final index = _tickets.indexWhere((t) => t.id == ticketId);
    if (index >= 0) {
      final ticket = _tickets[index];
      _tickets[index] = ticket.copyWith(
        replyCount: (ticket.replyCount ?? 0) + 1,
      );
    }
    return message;
  }

  /// The ticket list shows a subject, but the form only asks for a category
  /// and a description — so the category becomes the subject, which is what
  /// the operator's desk would do with it anyway.
  String _titleFor(TicketIssueType type) => switch (type) {
    TicketIssueType.noConnection => 'No connection',
    TicketIssueType.slowSpeed => 'Slow speed',
    TicketIssueType.frequentDrops => 'Frequent drops',
    TicketIssueType.billing => 'Billing question',
  };
}
