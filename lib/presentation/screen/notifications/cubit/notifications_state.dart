part of 'notifications_cubit.dart';

@freezed
sealed class NotificationsState with _$NotificationsState {
  const factory NotificationsState({
    @Default(BaseStatus.initial()) BaseStatus status,
    @Default(<NotificationEntity>[]) List<NotificationEntity> notifications,
    @Default(<NotificationPreferenceEntity>[])
    List<NotificationPreferenceEntity> preferences,
  }) = _NotificationsState;

  const NotificationsState._();

  int get unreadCount => notifications.where((n) => !n.isRead).length;

  bool get isEmpty => status.isSuccess && notifications.isEmpty;

  bool isEnabled(NotificationCategory category) =>
      preferences
          .where((p) => p.category == category)
          .map((p) => p.enabled)
          .firstOrNull ??
      true;
}
