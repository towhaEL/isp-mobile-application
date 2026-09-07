part of '../base/base_response.dart';

@freezed
abstract class TicketResponseModel with _$TicketResponseModel {
  const factory TicketResponseModel({
    String? id,
    String? title,
    TicketStatus? status,
    DateTime? createdAt,
    int? replyCount,
    int? connectionId,
    String? eta,
  }) = _TicketResponseModel;

  factory TicketResponseModel.fromJson(Map<String, dynamic> json) =>
      _$TicketResponseModelFromJson(json);
}

@freezed
abstract class TicketMessageResponseModel with _$TicketMessageResponseModel {
  const factory TicketMessageResponseModel({
    String? id,
    String? body,
    DateTime? sentAt,
    bool? fromCustomer,
    String? authorLabel,
  }) = _TicketMessageResponseModel;

  factory TicketMessageResponseModel.fromJson(Map<String, dynamic> json) =>
      _$TicketMessageResponseModelFromJson(json);
}

@freezed
abstract class SupportContactResponseModel with _$SupportContactResponseModel {
  const factory SupportContactResponseModel({
    SupportChannel? channel,
    String? value,
  }) = _SupportContactResponseModel;

  factory SupportContactResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SupportContactResponseModelFromJson(json);
}

@freezed
abstract class LineCheckResponseModel with _$LineCheckResponseModel {
  const factory LineCheckResponseModel({
    bool? faultFound,
    DateTime? checkedAt,
    String? detail,
  }) = _LineCheckResponseModel;

  factory LineCheckResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LineCheckResponseModelFromJson(json);
}

@freezed
abstract class ServiceAreaResponseModel with _$ServiceAreaResponseModel {
  const factory ServiceAreaResponseModel({
    String? id,
    String? name,
    bool? isCovered,
  }) = _ServiceAreaResponseModel;

  factory ServiceAreaResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceAreaResponseModelFromJson(json);
}
