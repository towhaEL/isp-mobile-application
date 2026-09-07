import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:isp_selfcare/data/data_source/account/account_data_source.dart';
import 'package:isp_selfcare/data/models/response_model/base/base_response.dart';
import 'package:isp_selfcare/domain/enum/dio_client_type.dart';
import 'package:retrofit/retrofit.dart';

part 'account_remote_data_source.g.dart';

/// The customer-scoped account surface.
///
/// These paths describe an API that does not exist yet — the billing backend
/// today is staff-facing. They are written as the contract the app expects, so
/// that pointing `API_BASE_URL` at a real deployment is the only change needed.
@RestApi()
@LazySingleton()
abstract class AccountRemoteDataSource implements AccountDataSource {
  @factoryMethod
  factory AccountRemoteDataSource(@Named(DioClientType.authenticated) Dio dio) =
      _AccountRemoteDataSource;

  @override
  @GET('/api/v1/selfcare/me')
  Future<CustomerResponseModel> getProfile();

  @override
  @GET('/api/v1/selfcare/connections')
  Future<List<ConnectionResponseModel>> getConnections();

  @override
  @GET('/api/v1/selfcare/notifications')
  Future<List<NotificationResponseModel>> getNotifications();

  @override
  @GET('/api/v1/selfcare/notifications/preferences')
  Future<List<NotificationPreferenceResponseModel>>
  getNotificationPreferences();

  @override
  @PUT('/api/v1/selfcare/notifications/preferences/{category}')
  Future<void> setNotificationPreference({
    @Path('category') required String category,
    @Field('enabled') required bool enabled,
  });

  @override
  @GET('/api/v1/selfcare/offers')
  Future<List<OfferResponseModel>> getOffers();

  @override
  @GET('/api/v1/selfcare/rewards')
  Future<RewardsResponseModel> getRewards();

  @override
  @POST('/api/v1/selfcare/rewards/redeem')
  Future<RewardsResponseModel> redeemReward({
    @Field('option_id') required String optionId,
  });

  @override
  @GET('/api/v1/selfcare/referral')
  Future<ReferralResponseModel> getReferral();

  @override
  @GET('/api/v1/selfcare/service-areas')
  Future<List<ServiceAreaResponseModel>> getServiceAreas();

  @override
  @POST('/api/v1/selfcare/connections/{id}/relocation')
  Future<void> requestRelocation({
    @Path('id') required int connectionId,
    @Field('area_id') required String areaId,
    @Field('address') required String address,
    @Field('preferred_date') required String preferredDate,
  });
}
