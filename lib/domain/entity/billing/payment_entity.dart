part of '../base/base_entity.dart';

/// Money that arrived. [reference] is the gateway or receipt number the
/// customer will quote when something looks wrong.
@freezed
abstract class PaymentEntity with _$PaymentEntity {
  const factory PaymentEntity({
    required int id,
    required int invoiceId,
    required String invoiceCode,
    required double amount,
    required String currency,
    required DateTime paidAt,
    String? reference,
    String? method,
    String? note,
  }) = _PaymentEntity;
}
