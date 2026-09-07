import 'package:isp_selfcare/data/models/request_model/base/base_request.dart';
import 'package:isp_selfcare/data/models/response_model/base/base_response.dart';

abstract class BillingDataSource {
  Future<AccountSummaryResponseModel> getAccountSummary();

  Future<List<InvoiceResponseModel>> getInvoices({int? connectionId});

  Future<InvoiceResponseModel> getInvoice({required int invoiceId});

  Future<List<PaymentResponseModel>> getPayments({int? connectionId});

  /// The wallets, cards and bank mandates the customer can pay from.
  Future<List<PaymentMethodResponseModel>> getPaymentMethods();

  Future<PaymentReceiptResponseModel> payInvoice({
    required int invoiceId,
    required String paymentMethodId,
  });

  Future<AutopayResponseModel> getAutopay();

  Future<AutopayResponseModel> saveAutopay(AutopayRequestModel request);
}
