import 'package:injectable/injectable.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';
import 'package:isp_selfcare/domain/repository/auth/auth_repository.dart';
import 'package:isp_selfcare/domain/use_cases/base/base_use_case.dart';

@singleton
class LoginUseCase with BaseUseCaseWithParams<void, LoginEntity> {
  LoginUseCase(this._authRepository);

  final AuthRepository _authRepository;

  @override
  Future<void> execute(LoginEntity params) {
    return _authRepository.login(inputModel: params);
  }
}
