part of '../base/base_request.dart';

@freezed
abstract class CreateTicketRequestModel with _$CreateTicketRequestModel {
  const factory CreateTicketRequestModel({
    required int connectionId,
    required TicketIssueType issueType,
    required String description,
    String? preferredVisitTime,
  }) = _CreateTicketRequestModel;

  factory CreateTicketRequestModel.fromJson(Map<String, dynamic> json) =>
      _$CreateTicketRequestModelFromJson(json);
}

@freezed
abstract class TicketReplyRequestModel with _$TicketReplyRequestModel {
  const factory TicketReplyRequestModel({required String body}) =
      _TicketReplyRequestModel;

  factory TicketReplyRequestModel.fromJson(Map<String, dynamic> json) =>
      _$TicketReplyRequestModelFromJson(json);
}
