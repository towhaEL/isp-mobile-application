import 'package:injectable/injectable.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';
import 'package:isp_selfcare/domain/repository/account/account_repository.dart';
import 'package:isp_selfcare/domain/use_cases/base/base_use_case.dart';

@singleton
class SetNotificationPreferenceUseCase
    with
        BaseUseCaseWithParams<
          void,
          ({NotificationCategory category, bool enabled})
        > {
  SetNotificationPreferenceUseCase(this._accountRepository);

  final AccountRepository _accountRepository;

  @override
  Future<void> execute(
    ({NotificationCategory category, bool enabled}) params,
  ) => _accountRepository.setNotificationPreference(
    category: params.category,
    enabled: params.enabled,
  );
}
