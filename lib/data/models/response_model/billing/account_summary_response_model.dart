part of '../base/base_response.dart';

@freezed
abstract class AccountSummaryResponseModel with _$AccountSummaryResponseModel {
  const factory AccountSummaryResponseModel({
    int? customerId,
    @NullableDecimalConverter() double? outstandingAmount,
    @NullableDecimalConverter() double? creditBalance,
    String? currency,
    int? overdueInvoiceCount,
    DateTime? nextDueDate,
  }) = _AccountSummaryResponseModel;

  factory AccountSummaryResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AccountSummaryResponseModelFromJson(json);
}
