import 'package:injectable/injectable.dart';
import 'package:isp_selfcare/domain/repository/auth/auth_repository.dart';
import 'package:isp_selfcare/domain/use_cases/base/base_use_case.dart';

@singleton
class LogoutUseCase with BaseUseCase<void> {
  LogoutUseCase(this._authRepository);

  final AuthRepository _authRepository;

  @override
  Future<void> execute() => _authRepository.logout();
}
