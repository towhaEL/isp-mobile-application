part of '../base/base_entity.dart';

/// The customer's net position — the one number the home screen leads with,
/// plus the context needed to make it actionable.
@freezed
abstract class AccountSummaryEntity with _$AccountSummaryEntity {
  const factory AccountSummaryEntity({
    required int customerId,
    required double outstandingAmount,
    required double creditBalance,
    required String currency,
    @Default(0) int overdueInvoiceCount,
    DateTime? nextDueDate,
  }) = _AccountSummaryEntity;

  const AccountSummaryEntity._();

  /// Outstanding less any credit already sitting on the account: what the
  /// customer would actually have to pay today.
  double get netPayable {
    final net = outstandingAmount - creditBalance;
    return net > 0 ? net : 0;
  }

  bool get isSettled => netPayable == 0;
  bool get hasOverdue => overdueInvoiceCount > 0;
}
