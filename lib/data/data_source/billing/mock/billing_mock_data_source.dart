import 'package:injectable/injectable.dart';
import 'package:isp_selfcare/data/data_source/billing/billing_data_source.dart';
import 'package:isp_selfcare/data/data_source/mock_data/selfcare_fixtures.dart';
import 'package:isp_selfcare/data/models/request_model/base/base_request.dart';
import 'package:isp_selfcare/data/models/response_model/base/base_response.dart';
import 'package:isp_selfcare/domain/enum/invoice_status.dart';

/// Offline billing data. Paying an invoice actually settles it in memory, so
/// the bill screen and the home summary agree afterwards.
@LazySingleton()
class BillingMockDataSource implements BillingDataSource {
  BillingMockDataSource() {
    _invoices = [...SelfcareFixtures.invoices];
    _payments = [...SelfcareFixtures.payments];
  }

  static const _latency = Duration(milliseconds: 320);

  late List<InvoiceResponseModel> _invoices;
  late List<PaymentResponseModel> _payments;
  AutopayResponseModel _autopay = const AutopayResponseModel(enabled: false);

  Future<void> get _wait => Future<void>.delayed(_latency);

  @override
  Future<AccountSummaryResponseModel> getAccountSummary() async {
    await _wait;
    // Derived rather than fixed, so it stays true after a payment.
    final outstanding = _invoices
        .where((i) => i.status?.isCollectable ?? false)
        .fold<double>(
          0,
          (sum, i) =>
              sum +
              ((i.amount ?? 0) -
                  (i.paidAmount ?? 0) -
                  (i.creditAppliedAmount ?? 0)),
        );
    final overdue = _invoices
        .where((i) => i.status == InvoiceStatus.overdue)
        .length;
    final dueDates =
        _invoices
            .where((i) => i.status?.isCollectable ?? false)
            .map((i) => i.dueDate)
            .nonNulls
            .toList()
          ..sort();

    return AccountSummaryResponseModel(
      customerId: 1,
      outstandingAmount: outstanding,
      creditBalance: 0,
      currency: 'BDT',
      overdueInvoiceCount: overdue,
      nextDueDate: dueDates.firstOrNull,
    );
  }

  @override
  Future<List<InvoiceResponseModel>> getInvoices({int? connectionId}) async {
    await _wait;
    if (connectionId == null) return _invoices;
    return _invoices.where((i) => i.connectionId == connectionId).toList();
  }

  @override
  Future<InvoiceResponseModel> getInvoice({required int invoiceId}) async {
    await _wait;
    final invoice = _invoices.where((i) => i.id == invoiceId).firstOrNull;
    if (invoice == null) {
      throw ArgumentError.value(invoiceId, 'invoiceId', 'No such invoice');
    }
    return invoice;
  }

  @override
  Future<List<PaymentResponseModel>> getPayments({int? connectionId}) async {
    await _wait;
    return _payments;
  }

  @override
  Future<List<PaymentMethodResponseModel>> getPaymentMethods() async {
    await _wait;
    return SelfcareFixtures.paymentMethods;
  }

  @override
  Future<PaymentReceiptResponseModel> payInvoice({
    required int invoiceId,
    required String paymentMethodId,
  }) async {
    await _wait;
    final index = _invoices.indexWhere((i) => i.id == invoiceId);
    if (index < 0) {
      throw ArgumentError.value(invoiceId, 'invoiceId', 'No such invoice');
    }
    final invoice = _invoices[index];
    final method = SelfcareFixtures.paymentMethods
        .where((m) => m.id == paymentMethodId)
        .firstOrNull;
    final amount = (invoice.amount ?? 0) - (invoice.paidAmount ?? 0);

    _invoices[index] = invoice.copyWith(
      status: InvoiceStatus.paid,
      paidAmount: invoice.amount,
      paidAt: DateTime.now(),
    );

    final connection = SelfcareFixtures.connections
        .where((c) => c.id == invoice.connectionId)
        .firstOrNull;

    _payments = [
      PaymentResponseModel(
        id: DateTime.now().millisecondsSinceEpoch,
        invoiceId: invoiceId,
        invoiceCode: invoice.invoiceCode,
        amount: amount,
        currency: invoice.currency ?? 'BDT',
        paidAt: DateTime.now(),
        method: method?.name,
      ),
      ..._payments,
    ];

    return PaymentReceiptResponseModel(
      receiptNumber: '#${DateTime.now().millisecondsSinceEpoch % 10000000}',
      amount: amount,
      currency: invoice.currency ?? 'BDT',
      channel: method?.name ?? paymentMethodId,
      connectionLabel: connection?.title ?? connection?.code ?? '',
      paidAt: DateTime.now(),
      serviceRunsTo: DateTime.now().add(const Duration(days: 30)),
    );
  }

  @override
  Future<AutopayResponseModel> getAutopay() async {
    await _wait;
    return _autopay;
  }

  @override
  Future<AutopayResponseModel> saveAutopay(AutopayRequestModel request) async {
    await _wait;
    _autopay = AutopayResponseModel(
      enabled: request.enabled,
      timing: request.timing,
      connectionIds: request.connectionIds,
      source: SelfcareFixtures.paymentMethods
          .where((m) => m.id == request.paymentMethodId)
          .firstOrNull,
    );
    return _autopay;
  }
}
