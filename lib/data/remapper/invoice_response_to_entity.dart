import 'package:isp_selfcare/data/models/response_model/base/base_response.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';
import 'package:isp_selfcare/domain/enum/billing_enums.dart';
import 'package:isp_selfcare/domain/enum/invoice_status.dart';

extension InvoiceResponseListMapper on List<InvoiceResponseModel> {
  List<InvoiceEntity> toInvoiceEntities() =>
      map((invoice) => invoice.toInvoiceEntity()).toList();
}

extension InvoiceResponseMapper on InvoiceResponseModel {
  InvoiceEntity toInvoiceEntity() {
    // Every date on an invoice is load-bearing, but a malformed payload should
    // degrade to "we cannot date this" rather than crash the bills list.
    final fallbackDate = invoiceDate ?? DateTime.now();
    return InvoiceEntity(
      id: id ?? 0,
      invoiceCode: invoiceCode ?? '',
      connectionId: connectionId ?? 0,
      invoiceType: invoiceType ?? InvoiceType.monthly,
      status: status ?? InvoiceStatus.pending,
      servicePeriodStart: servicePeriodStart ?? fallbackDate,
      servicePeriodEnd: servicePeriodEnd ?? fallbackDate,
      invoiceDate: fallbackDate,
      dueDate: dueDate ?? fallbackDate,
      amount: amount ?? 0,
      paidAmount: paidAmount ?? 0,
      creditAppliedAmount: creditAppliedAmount ?? 0,
      currency: currency ?? 'BDT',
      paidAt: paidAt,
      notes: notes,
      lines: lines.map((line) => line.toInvoiceLineEntity()).toList(),
    );
  }
}

extension InvoiceLineResponseMapper on InvoiceLineResponseModel {
  InvoiceLineEntity toInvoiceLineEntity() => InvoiceLineEntity(
    id: id ?? 0,
    lineType: lineType ?? InvoiceLineType.other,
    description: description ?? '',
    quantity: quantity ?? 1,
    unitAmount: unitAmount ?? 0,
    amount: amount ?? 0,
    reason: reason,
  );
}
