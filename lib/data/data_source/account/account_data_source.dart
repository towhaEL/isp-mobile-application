import 'package:isp_selfcare/data/models/response_model/base/base_response.dart';

/// Everything hanging off "who is signed in": their profile, the lines they
/// hold, and the account-level extras the drawer exposes.
abstract class AccountDataSource {
  Future<CustomerResponseModel> getProfile();

  Future<List<ConnectionResponseModel>> getConnections();

  Future<List<NotificationResponseModel>> getNotifications();

  Future<List<NotificationPreferenceResponseModel>>
  getNotificationPreferences();

  Future<void> setNotificationPreference({
    required String category,
    required bool enabled,
  });

  Future<List<OfferResponseModel>> getOffers();

  Future<RewardsResponseModel> getRewards();

  /// Spend points on a reward. Returns the balance after redemption.
  Future<RewardsResponseModel> redeemReward({required String optionId});

  Future<ReferralResponseModel> getReferral();

  Future<List<ServiceAreaResponseModel>> getServiceAreas();

  Future<void> requestRelocation({
    required int connectionId,
    required String areaId,
    required String address,
    required String preferredDate,
  });
}
