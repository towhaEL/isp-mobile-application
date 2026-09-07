import 'package:flutter_test/flutter_test.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';
import 'package:isp_selfcare/domain/repository/auth/auth_repository.dart';
import 'package:isp_selfcare/domain/use_cases/auth/login_use_case.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthRepository extends Mock implements AuthRepository {}

void main() {
  setUpAll(() {
    registerFallbackValue(const LoginEntity(username: '', password: ''));
  });

  late MockAuthRepository repository;
  late LoginUseCase useCase;

  setUp(() {
    repository = MockAuthRepository();
    useCase = LoginUseCase(repository);
  });

  test('execute forwards the entity to repository.login', () async {
    const entity = LoginEntity(
      username: '08.01.001.410233',
      password: 'gulshan144',
    );
    when(
      () => repository.login(inputModel: any(named: 'inputModel')),
    ).thenAnswer((_) async {});

    await useCase.execute(entity);

    verify(() => repository.login(inputModel: entity)).called(1);
  });
}
