import 'package:isp_selfcare/data/models/request_model/base/base_request.dart';
import 'package:isp_selfcare/data/models/response_model/base/base_response.dart';

abstract class SupportDataSource {
  Future<LineCheckResponseModel> getLineCheck({required int connectionId});

  Future<List<SupportContactResponseModel>> getContacts();

  Future<List<TicketResponseModel>> getTickets();

  Future<List<TicketMessageResponseModel>> getTicketMessages({
    required String ticketId,
  });

  Future<TicketResponseModel> createTicket(CreateTicketRequestModel request);

  Future<TicketMessageResponseModel> replyToTicket({
    required String ticketId,
    required TicketReplyRequestModel request,
  });
}
