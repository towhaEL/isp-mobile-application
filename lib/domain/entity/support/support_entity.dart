part of '../base/base_entity.dart';

@JsonEnum(fieldRename: FieldRename.snake)
enum TicketStatus { open, inProgress, resolved, closed }

/// The fault categories the ticket form offers.
@JsonEnum(fieldRename: FieldRename.snake)
enum TicketIssueType { noConnection, slowSpeed, frequentDrops, billing }

@freezed
abstract class TicketEntity with _$TicketEntity {
  const factory TicketEntity({
    required String id,
    required String title,
    required TicketStatus status,
    required DateTime createdAt,
    @Default(0) int replyCount,
    int? connectionId,
    String? eta,
  }) = _TicketEntity;
}

@freezed
abstract class TicketMessageEntity with _$TicketMessageEntity {
  const factory TicketMessageEntity({
    required String id,
    required String body,
    required DateTime sentAt,

    /// Whether the customer wrote it — drives which side of the thread it
    /// sits on and how it is coloured.
    required bool fromCustomer,
    String? authorLabel,
  }) = _TicketMessageEntity;
}

/// How to reach support. [value] is dialled, mailed or opened depending on
/// [channel], so it is deliberately untyped text rather than a parsed number.
@freezed
abstract class SupportContactEntity with _$SupportContactEntity {
  const factory SupportContactEntity({
    required SupportChannel channel,
    required String value,
  }) = _SupportContactEntity;
}

@JsonEnum(fieldRename: FieldRename.snake)
enum SupportChannel { hotline, phone, email, liveChat }

/// The automated line test shown at the top of the support screen.
@freezed
abstract class LineCheckEntity with _$LineCheckEntity {
  const factory LineCheckEntity({
    required bool faultFound,
    required DateTime checkedAt,
    String? detail,
  }) = _LineCheckEntity;
}

/// A request to move an existing line to a new address.
@freezed
abstract class ServiceAreaEntity with _$ServiceAreaEntity {
  const factory ServiceAreaEntity({
    required String id,
    required String name,

    /// Outside coverage the operator must survey before quoting, which is a
    /// materially different promise from "we can move you".
    required bool isCovered,
  }) = _ServiceAreaEntity;
}
