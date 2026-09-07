part of '../base/base_entity.dart';

/// What a notification is about. The category decides its icon and, more
/// importantly, which preference switch silences it.
@JsonEnum(fieldRename: FieldRename.snake)
enum NotificationCategory { bill, payment, outage, ticket, offer }

@freezed
abstract class NotificationEntity with _$NotificationEntity {
  const factory NotificationEntity({
    required String id,
    required String title,
    required String body,
    required NotificationCategory category,
    required DateTime sentAt,
    @Default(false) bool isRead,
  }) = _NotificationEntity;
}

/// One row of the notification-preferences list.
@freezed
abstract class NotificationPreferenceEntity
    with _$NotificationPreferenceEntity {
  const factory NotificationPreferenceEntity({
    required NotificationCategory category,
    required bool enabled,
  }) = _NotificationPreferenceEntity;
}

/// A marketing campaign card.
@freezed
abstract class OfferEntity with _$OfferEntity {
  const factory OfferEntity({
    required String id,
    required String kicker,
    required String title,
    required String body,
    String? imageUrl,
  }) = _OfferEntity;
}
