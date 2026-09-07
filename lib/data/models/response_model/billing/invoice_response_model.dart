part of '../base/base_response.dart';

@freezed
abstract class InvoiceResponseModel with _$InvoiceResponseModel {
  const factory InvoiceResponseModel({
    int? id,
    String? invoiceCode,
    int? connectionId,
    int? customerId,
    InvoiceType? invoiceType,
    InvoiceStatus? status,
    DateTime? servicePeriodStart,
    DateTime? servicePeriodEnd,
    DateTime? invoiceDate,
    DateTime? dueDate,
    @NullableDecimalConverter() double? amount,
    @NullableDecimalConverter() double? paidAmount,
    @NullableDecimalConverter() double? creditAppliedAmount,
    String? currency,
    DateTime? paidAt,
    String? notes,
    @Default(<InvoiceLineResponseModel>[]) List<InvoiceLineResponseModel> lines,
  }) = _InvoiceResponseModel;

  factory InvoiceResponseModel.fromJson(Map<String, dynamic> json) =>
      _$InvoiceResponseModelFromJson(json);
}

@freezed
abstract class InvoiceLineResponseModel with _$InvoiceLineResponseModel {
  const factory InvoiceLineResponseModel({
    int? id,
    InvoiceLineType? lineType,
    String? description,
    @NullableDecimalConverter() double? quantity,
    @NullableDecimalConverter() double? unitAmount,
    @NullableDecimalConverter() double? amount,
    String? reason,
  }) = _InvoiceLineResponseModel;

  factory InvoiceLineResponseModel.fromJson(Map<String, dynamic> json) =>
      _$InvoiceLineResponseModelFromJson(json);
}
