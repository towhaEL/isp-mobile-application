import 'package:isp_selfcare/domain/entity/base/base_entity.dart';

abstract class AccountRepository {
  Future<CustomerEntity> getProfile();

  Future<List<ConnectionEntity>> getConnections();

  Future<List<NotificationEntity>> getNotifications();

  Future<List<NotificationPreferenceEntity>> getNotificationPreferences();

  Future<void> setNotificationPreference({
    required NotificationCategory category,
    required bool enabled,
  });

  Future<List<OfferEntity>> getOffers();

  Future<RewardsEntity> getRewards();

  Future<RewardsEntity> redeemReward({required String optionId});

  Future<ReferralEntity> getReferral();

  Future<List<ServiceAreaEntity>> getServiceAreas();

  Future<void> requestRelocation({
    required int connectionId,
    required String areaId,
    required String address,
    required String preferredDate,
  });
}
