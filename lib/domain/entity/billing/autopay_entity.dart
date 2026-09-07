part of '../base/base_entity.dart';

/// When in the cycle autopay should charge.
@JsonEnum(fieldRename: FieldRename.snake)
enum AutopayTiming { threeDaysBeforeDue, onDueDate, firstOfMonth }

/// A saved way to pay: a mobile wallet, a card or a bank mandate.
@freezed
abstract class PaymentMethodEntity with _$PaymentMethodEntity {
  const factory PaymentMethodEntity({
    required String id,
    required String name,
    required PaymentMethodKind kind,

    /// The masked tail the customer recognises, e.g. `•••• 2611`.
    String? maskedAccount,
  }) = _PaymentMethodEntity;
}

@JsonEnum(fieldRename: FieldRename.snake)
enum PaymentMethodKind { wallet, card, bank }

/// The customer's autopay mandate.
///
/// [connectionIds] is explicit rather than "all lines" because a customer with
/// three connections routinely wants only their own on autopay — the design's
/// per-line switches exist for exactly that.
@freezed
abstract class AutopayConfigEntity with _$AutopayConfigEntity {
  const factory AutopayConfigEntity({
    @Default(false) bool enabled,
    @Default(AutopayTiming.threeDaysBeforeDue) AutopayTiming timing,
    @Default(<int>[]) List<int> connectionIds,
    PaymentMethodEntity? source,
  }) = _AutopayConfigEntity;

  const AutopayConfigEntity._();

  /// Autopay is only actually running once it is switched on, has something to
  /// charge, and has at least one line selected.
  bool get isActive => enabled && source != null && connectionIds.isNotEmpty;
}

/// What a mid-cycle plan change costs today, as the backend prices it.
@freezed
abstract class ProrationQuoteEntity with _$ProrationQuoteEntity {
  const factory ProrationQuoteEntity({
    required int daysLeftInCycle,
    required double creditForUnusedDays,
    required double newPlanRemainder,
    required double dueToday,
    required double nextCycleAmount,
    required String currency,
  }) = _ProrationQuoteEntity;
}

/// A completed payment, as shown on the receipt screen.
@freezed
abstract class PaymentReceiptEntity with _$PaymentReceiptEntity {
  const factory PaymentReceiptEntity({
    required String receiptNumber,
    required double amount,
    required String currency,
    required String channel,
    required String connectionLabel,
    required DateTime paidAt,
    DateTime? serviceRunsTo,
  }) = _PaymentReceiptEntity;
}
