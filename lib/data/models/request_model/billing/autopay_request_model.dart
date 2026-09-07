part of '../base/base_request.dart';

@freezed
abstract class AutopayRequestModel with _$AutopayRequestModel {
  const factory AutopayRequestModel({
    required bool enabled,
    required AutopayTiming timing,
    required List<int> connectionIds,
    String? paymentMethodId,
  }) = _AutopayRequestModel;

  factory AutopayRequestModel.fromJson(Map<String, dynamic> json) =>
      _$AutopayRequestModelFromJson(json);
}
