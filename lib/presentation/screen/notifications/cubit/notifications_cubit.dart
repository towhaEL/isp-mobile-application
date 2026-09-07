import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:isp_selfcare/core/error/response_error.dart';
import 'package:isp_selfcare/core/state_status/base_status.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';
import 'package:isp_selfcare/domain/use_cases/account/get_notification_preferences_use_case.dart';
import 'package:isp_selfcare/domain/use_cases/account/get_notifications_use_case.dart';
import 'package:isp_selfcare/domain/use_cases/account/set_notification_preference_use_case.dart';
import 'package:logger/logger.dart';

part 'notifications_cubit.freezed.dart';
part 'notifications_state.dart';

/// Notifications and the switches that govern them.
///
/// One cubit for both because they are two views of the same thing: the
/// settings screen turns a category off, and the bell stops showing it. A
/// singleton so the masthead's unread pip and the list never disagree.
@singleton
class NotificationsCubit extends Cubit<NotificationsState> {
  NotificationsCubit(
    this._getNotifications,
    this._getPreferences,
    this._setPreference,
    this._logger,
  ) : super(const NotificationsState());

  final GetNotificationsUseCase _getNotifications;
  final GetNotificationPreferencesUseCase _getPreferences;
  final SetNotificationPreferenceUseCase _setPreference;
  final Logger _logger;

  Future<void> load() async {
    emit(state.copyWith(status: const BaseStatus.loading()));
    try {
      final results = await Future.wait([
        _getNotifications.execute(),
        _getPreferences.execute(),
      ]);
      emit(
        state.copyWith(
          status: const BaseStatus.success(),
          notifications: results[0] as List<NotificationEntity>,
          preferences: results[1] as List<NotificationPreferenceEntity>,
        ),
      );
    } catch (e) {
      _logger.e(e);
      emit(state.copyWith(status: BaseStatus.failure(ResponseError.from(e))));
    }
  }

  /// Flips a preference optimistically: the switch should move under the
  /// finger, not after a round trip. If the write fails the old value is put
  /// back rather than left lying about what the server holds.
  Future<void> setPreference(
    NotificationCategory category, {
    required bool enabled,
  }) async {
    final previous = state.preferences;
    emit(
      state.copyWith(
        preferences: [
          for (final pref in previous)
            if (pref.category == category)
              pref.copyWith(enabled: enabled)
            else
              pref,
        ],
      ),
    );

    try {
      await _setPreference.execute((category: category, enabled: enabled));
    } catch (e) {
      _logger.e(e);
      emit(state.copyWith(preferences: previous));
    }
  }

  /// Marks everything read locally — what opening the list does. There is no
  /// server call yet because the API has no read-receipt endpoint.
  void markAllRead() => emit(
    state.copyWith(
      notifications: [
        for (final n in state.notifications) n.copyWith(isRead: true),
      ],
    ),
  );
}
