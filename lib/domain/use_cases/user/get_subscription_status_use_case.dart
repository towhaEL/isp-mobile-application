import 'package:injectable/injectable.dart';
import 'package:isp_selfcare/domain/repository/user/subscription_repository.dart';

@singleton
class GetSubscriptionStatusUseCase {
  GetSubscriptionStatusUseCase(this._subscriptionRepository);

  final SubscriptionRepository _subscriptionRepository;

  bool execute() => _subscriptionRepository.isSubscribed();
}
