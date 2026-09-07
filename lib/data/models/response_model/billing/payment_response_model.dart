part of '../base/base_response.dart';

@freezed
abstract class PaymentResponseModel with _$PaymentResponseModel {
  const factory PaymentResponseModel({
    int? id,
    int? invoiceId,
    String? invoiceCode,
    @NullableDecimalConverter() double? amount,
    String? currency,
    DateTime? paidAt,
    String? reference,
    String? method,
    String? note,
  }) = _PaymentResponseModel;

  factory PaymentResponseModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentResponseModelFromJson(json);
}
