import 'package:injectable/injectable.dart';
import 'package:isp_selfcare/data/data_source/account/account_data_source.dart';
import 'package:isp_selfcare/data/data_source/mock_data/selfcare_fixtures.dart';
import 'package:isp_selfcare/data/models/response_model/base/base_response.dart';

/// Offline account data.
///
/// Registered as a singleton so the mutations below — redeeming points,
/// flipping a notification preference — survive navigation. A mock that resets
/// every time a screen rebuilds cannot demonstrate the flows it exists to
/// demonstrate.
@LazySingleton()
class AccountMockDataSource implements AccountDataSource {
  AccountMockDataSource() {
    _rewards = SelfcareFixtures.rewards;
    _preferences = [...SelfcareFixtures.notificationPreferences];
  }

  static const _latency = Duration(milliseconds: 320);

  late RewardsResponseModel _rewards;
  late List<NotificationPreferenceResponseModel> _preferences;

  Future<T> _delayed<T>(T value) async {
    await Future<void>.delayed(_latency);
    return value;
  }

  @override
  Future<CustomerResponseModel> getProfile() =>
      _delayed(SelfcareFixtures.customer);

  @override
  Future<List<ConnectionResponseModel>> getConnections() =>
      _delayed(SelfcareFixtures.connections);

  @override
  Future<List<NotificationResponseModel>> getNotifications() =>
      _delayed(SelfcareFixtures.notifications);

  @override
  Future<List<NotificationPreferenceResponseModel>>
  getNotificationPreferences() => _delayed(_preferences);

  @override
  Future<void> setNotificationPreference({
    required String category,
    required bool enabled,
  }) async {
    await Future<void>.delayed(_latency);
    _preferences = [
      for (final pref in _preferences)
        if (pref.category?.name == category)
          pref.copyWith(enabled: enabled)
        else
          pref,
    ];
  }

  @override
  Future<List<OfferResponseModel>> getOffers() =>
      _delayed(SelfcareFixtures.offers);

  @override
  Future<RewardsResponseModel> getRewards() => _delayed(_rewards);

  @override
  Future<RewardsResponseModel> redeemReward({required String optionId}) async {
    await Future<void>.delayed(_latency);
    final option = _rewards.options.where((o) => o.id == optionId).firstOrNull;
    if (option == null) {
      throw ArgumentError.value(optionId, 'optionId', 'No such reward');
    }
    final cost = option.cost ?? 0;
    if ((_rewards.points ?? 0) < cost) {
      throw StateError('Not enough points to redeem "${option.title}"');
    }

    _rewards = _rewards.copyWith(
      points: (_rewards.points ?? 0) - cost,
      ledger: [
        RewardLedgerResponseModel(
          id: 'redeem-${DateTime.now().millisecondsSinceEpoch}',
          description: 'Redeemed ${option.title}',
          occurredAt: DateTime.now(),
          delta: -cost,
        ),
        ..._rewards.ledger,
      ],
    );
    return _rewards;
  }

  @override
  Future<ReferralResponseModel> getReferral() =>
      _delayed(SelfcareFixtures.referral);

  @override
  Future<List<ServiceAreaResponseModel>> getServiceAreas() =>
      _delayed(SelfcareFixtures.serviceAreas);

  @override
  Future<void> requestRelocation({
    required int connectionId,
    required String areaId,
    required String address,
    required String preferredDate,
  }) async {
    await Future<void>.delayed(_latency);
  }
}
