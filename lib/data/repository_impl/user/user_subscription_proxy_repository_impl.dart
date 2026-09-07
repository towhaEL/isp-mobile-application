import 'package:injectable/injectable.dart';
import 'package:isp_selfcare/core/env/app_environment.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';
import 'package:isp_selfcare/domain/exceptions/subscription_required_exception.dart';
import 'package:isp_selfcare/domain/repository/user/subscription_repository.dart';
import 'package:isp_selfcare/domain/repository/user/user_repository.dart';

@Environment(AppEnvironment.production)
@Environment(AppEnvironment.staging)
@LazySingleton(as: UserRepository)
class UserSubscriptionProxyRepositoryImpl implements UserRepository {
  UserSubscriptionProxyRepositoryImpl(
    @Named('cached') this._repository,
    this._subscriptionRepository,
  );

  final UserRepository _repository;
  final SubscriptionRepository _subscriptionRepository;

  @override
  Future<List<UserEntity>> getUserList() async {
    _ensureSubscribed();
    return _repository.getUserList();
  }

  @override
  Future<UserEntity> getUserById({required String userId}) async {
    _ensureSubscribed();
    return _repository.getUserById(userId: userId);
  }

  void _ensureSubscribed() {
    if (!_subscriptionRepository.isSubscribed()) {
      throw const SubscriptionRequiredException();
    }
  }
}
