import 'package:isp_selfcare/domain/entity/base/base_entity.dart';

abstract class BillingRepository {
  Future<AccountSummaryEntity> getAccountSummary();

  Future<List<InvoiceEntity>> getInvoices({int? connectionId});

  Future<InvoiceEntity> getInvoice({required int invoiceId});

  Future<List<PaymentEntity>> getPayments({int? connectionId});

  Future<List<PaymentMethodEntity>> getPaymentMethods();

  Future<PaymentReceiptEntity> payInvoice({
    required int invoiceId,
    required String paymentMethodId,
  });

  Future<AutopayConfigEntity> getAutopay();

  Future<AutopayConfigEntity> saveAutopay(AutopayConfigEntity config);
}
