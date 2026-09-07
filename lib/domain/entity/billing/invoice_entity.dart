part of '../base/base_entity.dart';

/// A bill. [amount] is the total charged, [paidAmount] what has landed and
/// [creditAppliedAmount] what was settled from account credit rather than cash
/// — the three are kept apart because a partially paid invoice needs all of
/// them to explain itself.
@freezed
abstract class InvoiceEntity with _$InvoiceEntity {
  const factory InvoiceEntity({
    required int id,
    required String invoiceCode,
    required int connectionId,
    required InvoiceType invoiceType,
    required InvoiceStatus status,
    required DateTime servicePeriodStart,
    required DateTime servicePeriodEnd,
    required DateTime invoiceDate,
    required DateTime dueDate,
    required double amount,
    required double paidAmount,
    required double creditAppliedAmount,
    required String currency,
    DateTime? paidAt,
    String? notes,
    @Default(<InvoiceLineEntity>[]) List<InvoiceLineEntity> lines,
  }) = _InvoiceEntity;

  const InvoiceEntity._();

  /// What the customer still owes on this invoice. Never negative — an
  /// overpayment is account credit, not a negative bill.
  double get dueAmount {
    final remaining = amount - paidAmount - creditAppliedAmount;
    return remaining > 0 ? remaining : 0;
  }

  bool get isFullyPaid => status.isSettled || dueAmount == 0;

  /// Days past [dueDate]; 0 when not yet due. Read off the status rather than
  /// the clock alone so a settled invoice never reads as overdue.
  int get daysOverdue {
    if (status.isSettled) return 0;
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final due = DateTime(dueDate.year, dueDate.month, dueDate.day);
    final diff = today.difference(due).inDays;
    return diff > 0 ? diff : 0;
  }

  bool get isOverdue => daysOverdue > 0;
}

/// One charge line on an invoice.
@freezed
abstract class InvoiceLineEntity with _$InvoiceLineEntity {
  const factory InvoiceLineEntity({
    required int id,
    required InvoiceLineType lineType,
    required String description,
    required double quantity,
    required double unitAmount,
    required double amount,
    String? reason,
  }) = _InvoiceLineEntity;
}
