part of '../base/base_response.dart';

@freezed
abstract class NotificationResponseModel with _$NotificationResponseModel {
  const factory NotificationResponseModel({
    String? id,
    String? title,
    String? body,
    NotificationCategory? category,
    DateTime? sentAt,
    bool? isRead,
  }) = _NotificationResponseModel;

  factory NotificationResponseModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationResponseModelFromJson(json);
}

@freezed
abstract class NotificationPreferenceResponseModel
    with _$NotificationPreferenceResponseModel {
  const factory NotificationPreferenceResponseModel({
    NotificationCategory? category,
    bool? enabled,
  }) = _NotificationPreferenceResponseModel;

  factory NotificationPreferenceResponseModel.fromJson(
    Map<String, dynamic> json,
  ) => _$NotificationPreferenceResponseModelFromJson(json);
}

@freezed
abstract class OfferResponseModel with _$OfferResponseModel {
  const factory OfferResponseModel({
    String? id,
    String? kicker,
    String? title,
    String? body,
    String? imageUrl,
  }) = _OfferResponseModel;

  factory OfferResponseModel.fromJson(Map<String, dynamic> json) =>
      _$OfferResponseModelFromJson(json);
}
