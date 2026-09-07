import 'package:injectable/injectable.dart';
import 'package:isp_selfcare/data/data_source/account/account_data_source.dart';
import 'package:isp_selfcare/data/data_source/base/factory/data_source_factory.dart';
import 'package:isp_selfcare/data/remapper/connection_response_to_entity.dart';
import 'package:isp_selfcare/data/remapper/customer_response_to_entity.dart';
import 'package:isp_selfcare/data/remapper/selfcare_response_to_entity.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';
import 'package:isp_selfcare/domain/repository/account/account_repository.dart';

@Singleton(as: AccountRepository)
class AccountRepositoryImpl implements AccountRepository {
  AccountRepositoryImpl(DataSourceFactory factory)
    : _dataSource = factory.createAccountDataSource();

  final AccountDataSource _dataSource;

  @override
  Future<CustomerEntity> getProfile() async =>
      (await _dataSource.getProfile()).toCustomerEntity();

  @override
  Future<List<ConnectionEntity>> getConnections() async =>
      (await _dataSource.getConnections()).toConnectionEntities();

  @override
  Future<List<NotificationEntity>> getNotifications() async =>
      (await _dataSource.getNotifications()).toEntities();

  @override
  Future<List<NotificationPreferenceEntity>>
  getNotificationPreferences() async =>
      (await _dataSource.getNotificationPreferences()).toEntities();

  @override
  Future<void> setNotificationPreference({
    required NotificationCategory category,
    required bool enabled,
  }) => _dataSource.setNotificationPreference(
    category: category.name,
    enabled: enabled,
  );

  @override
  Future<List<OfferEntity>> getOffers() async =>
      (await _dataSource.getOffers()).toEntities();

  @override
  Future<RewardsEntity> getRewards() async =>
      (await _dataSource.getRewards()).toEntity();

  @override
  Future<RewardsEntity> redeemReward({required String optionId}) async =>
      (await _dataSource.redeemReward(optionId: optionId)).toEntity();

  @override
  Future<ReferralEntity> getReferral() async =>
      (await _dataSource.getReferral()).toEntity();

  @override
  Future<List<ServiceAreaEntity>> getServiceAreas() async =>
      (await _dataSource.getServiceAreas()).toEntities();

  @override
  Future<void> requestRelocation({
    required int connectionId,
    required String areaId,
    required String address,
    required String preferredDate,
  }) => _dataSource.requestRelocation(
    connectionId: connectionId,
    areaId: areaId,
    address: address,
    preferredDate: preferredDate,
  );
}
