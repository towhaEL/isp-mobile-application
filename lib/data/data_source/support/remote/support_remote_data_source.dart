import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:isp_selfcare/data/data_source/support/support_data_source.dart';
import 'package:isp_selfcare/data/models/request_model/base/base_request.dart';
import 'package:isp_selfcare/data/models/response_model/base/base_response.dart';
import 'package:isp_selfcare/domain/enum/dio_client_type.dart';
import 'package:retrofit/retrofit.dart';

part 'support_remote_data_source.g.dart';

@RestApi()
@LazySingleton()
abstract class SupportRemoteDataSource implements SupportDataSource {
  @factoryMethod
  factory SupportRemoteDataSource(@Named(DioClientType.authenticated) Dio dio) =
      _SupportRemoteDataSource;

  @override
  @GET('/api/v1/selfcare/connections/{id}/line-check')
  Future<LineCheckResponseModel> getLineCheck({
    @Path('id') required int connectionId,
  });

  @override
  @GET('/api/v1/selfcare/support/contacts')
  Future<List<SupportContactResponseModel>> getContacts();

  @override
  @GET('/api/v1/selfcare/support/tickets')
  Future<List<TicketResponseModel>> getTickets();

  @override
  @GET('/api/v1/selfcare/support/tickets/{id}/messages')
  Future<List<TicketMessageResponseModel>> getTicketMessages({
    @Path('id') required String ticketId,
  });

  @override
  @POST('/api/v1/selfcare/support/tickets')
  Future<TicketResponseModel> createTicket(
    @Body() CreateTicketRequestModel request,
  );

  @override
  @POST('/api/v1/selfcare/support/tickets/{id}/messages')
  Future<TicketMessageResponseModel> replyToTicket({
    @Path('id') required String ticketId,
    @Body() required TicketReplyRequestModel request,
  });
}
