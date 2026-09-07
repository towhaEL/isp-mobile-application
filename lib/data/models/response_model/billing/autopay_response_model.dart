part of '../base/base_response.dart';

@freezed
abstract class PaymentMethodResponseModel with _$PaymentMethodResponseModel {
  const factory PaymentMethodResponseModel({
    String? id,
    String? name,
    PaymentMethodKind? kind,
    String? maskedAccount,
  }) = _PaymentMethodResponseModel;

  factory PaymentMethodResponseModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodResponseModelFromJson(json);
}

@freezed
abstract class AutopayResponseModel with _$AutopayResponseModel {
  const factory AutopayResponseModel({
    bool? enabled,
    AutopayTiming? timing,
    @Default(<int>[]) List<int> connectionIds,
    PaymentMethodResponseModel? source,
  }) = _AutopayResponseModel;

  factory AutopayResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AutopayResponseModelFromJson(json);
}

@freezed
abstract class ProrationQuoteResponseModel with _$ProrationQuoteResponseModel {
  const factory ProrationQuoteResponseModel({
    int? daysLeftInCycle,
    @NullableDecimalConverter() double? creditForUnusedDays,
    @NullableDecimalConverter() double? newPlanRemainder,
    @NullableDecimalConverter() double? dueToday,
    @NullableDecimalConverter() double? nextCycleAmount,
    String? currency,
  }) = _ProrationQuoteResponseModel;

  factory ProrationQuoteResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ProrationQuoteResponseModelFromJson(json);
}

@freezed
abstract class PaymentReceiptResponseModel with _$PaymentReceiptResponseModel {
  const factory PaymentReceiptResponseModel({
    String? receiptNumber,
    @NullableDecimalConverter() double? amount,
    String? currency,
    String? channel,
    String? connectionLabel,
    DateTime? paidAt,
    DateTime? serviceRunsTo,
  }) = _PaymentReceiptResponseModel;

  factory PaymentReceiptResponseModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentReceiptResponseModelFromJson(json);
}
