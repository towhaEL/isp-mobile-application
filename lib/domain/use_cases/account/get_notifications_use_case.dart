import 'package:injectable/injectable.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';
import 'package:isp_selfcare/domain/repository/account/account_repository.dart';
import 'package:isp_selfcare/domain/use_cases/base/base_use_case.dart';

@singleton
class GetNotificationsUseCase with BaseUseCase<List<NotificationEntity>> {
  GetNotificationsUseCase(this._accountRepository);

  final AccountRepository _accountRepository;

  @override
  Future<List<NotificationEntity>> execute() =>
      _accountRepository.getNotifications();
}
