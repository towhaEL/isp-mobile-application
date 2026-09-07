import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:isp_selfcare/data/data_source/billing/billing_data_source.dart';
import 'package:isp_selfcare/data/models/request_model/base/base_request.dart';
import 'package:isp_selfcare/data/models/response_model/base/base_response.dart';
import 'package:isp_selfcare/domain/enum/dio_client_type.dart';
import 'package:retrofit/retrofit.dart';

part 'billing_remote_data_source.g.dart';

@RestApi()
@LazySingleton()
abstract class BillingRemoteDataSource implements BillingDataSource {
  @factoryMethod
  factory BillingRemoteDataSource(@Named(DioClientType.authenticated) Dio dio) =
      _BillingRemoteDataSource;

  @override
  @GET('/api/v1/selfcare/billing/summary')
  Future<AccountSummaryResponseModel> getAccountSummary();

  @override
  @GET('/api/v1/selfcare/billing/invoices')
  Future<List<InvoiceResponseModel>> getInvoices({
    @Query('connection_id') int? connectionId,
  });

  @override
  @GET('/api/v1/selfcare/billing/invoices/{id}')
  Future<InvoiceResponseModel> getInvoice({@Path('id') required int invoiceId});

  @override
  @GET('/api/v1/selfcare/billing/payments')
  Future<List<PaymentResponseModel>> getPayments({
    @Query('connection_id') int? connectionId,
  });

  @override
  @GET('/api/v1/selfcare/billing/payment-methods')
  Future<List<PaymentMethodResponseModel>> getPaymentMethods();

  @override
  @POST('/api/v1/selfcare/billing/invoices/{id}/pay')
  Future<PaymentReceiptResponseModel> payInvoice({
    @Path('id') required int invoiceId,
    @Field('payment_method_id') required String paymentMethodId,
  });

  @override
  @GET('/api/v1/selfcare/billing/autopay')
  Future<AutopayResponseModel> getAutopay();

  @override
  @PUT('/api/v1/selfcare/billing/autopay')
  Future<AutopayResponseModel> saveAutopay(@Body() AutopayRequestModel request);
}
