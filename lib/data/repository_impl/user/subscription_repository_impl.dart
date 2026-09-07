import 'package:injectable/injectable.dart';
import 'package:isp_selfcare/data/data_source/user/local/subscription_local_data_source.dart';
import 'package:isp_selfcare/domain/repository/user/subscription_repository.dart';

@LazySingleton(as: SubscriptionRepository)
class SubscriptionRepositoryImpl implements SubscriptionRepository {
  SubscriptionRepositoryImpl(this._subscriptionDataSource);

  final SubscriptionLocalDataSource _subscriptionDataSource;

  @override
  bool isSubscribed() => _subscriptionDataSource.isSubscribed();

  @override
  Future<void> setSubscriptionStatus(bool value) =>
      _subscriptionDataSource.setSubscriptionStatus(value);
}
