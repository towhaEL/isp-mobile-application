import 'package:injectable/injectable.dart';
import 'package:isp_selfcare/domain/repository/auth/auth_repository.dart';
import 'package:isp_selfcare/domain/use_cases/base/base_use_case.dart';

@singleton
class HasSessionUseCase with BaseUseCase<bool> {
  HasSessionUseCase(this._authRepository);

  final AuthRepository _authRepository;

  @override
  Future<bool> execute() => _authRepository.hasSession();
}
