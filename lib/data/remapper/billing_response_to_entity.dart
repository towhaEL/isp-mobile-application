import 'package:isp_selfcare/data/models/response_model/base/base_response.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';

extension PaymentResponseListMapper on List<PaymentResponseModel> {
  List<PaymentEntity> toPaymentEntities() =>
      map((payment) => payment.toPaymentEntity()).toList();
}

extension PaymentResponseMapper on PaymentResponseModel {
  PaymentEntity toPaymentEntity() => PaymentEntity(
    id: id ?? 0,
    invoiceId: invoiceId ?? 0,
    invoiceCode: invoiceCode ?? '',
    amount: amount ?? 0,
    currency: currency ?? 'BDT',
    paidAt: paidAt ?? DateTime.now(),
    reference: reference,
    method: method,
    note: note,
  );
}

extension AccountSummaryResponseMapper on AccountSummaryResponseModel {
  AccountSummaryEntity toAccountSummaryEntity() => AccountSummaryEntity(
    customerId: customerId ?? 0,
    outstandingAmount: outstandingAmount ?? 0,
    creditBalance: creditBalance ?? 0,
    currency: currency ?? 'BDT',
    overdueInvoiceCount: overdueInvoiceCount ?? 0,
    nextDueDate: nextDueDate,
  );
}
