import 'package:flutter_test/flutter_test.dart';
import 'package:isp_selfcare/core/error/response_error.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';
import 'package:isp_selfcare/domain/use_cases/auth/login_use_case.dart';
import 'package:isp_selfcare/presentation/screen/auth/login/cubit/login_cubit.dart';
import 'package:logger/logger.dart';
import 'package:mocktail/mocktail.dart';

class MockLoginUseCase extends Mock implements LoginUseCase {}

class MockLogger extends Mock implements Logger {}

void main() {
  setUpAll(() {
    registerFallbackValue(const LoginEntity(username: '', password: ''));
  });

  late MockLoginUseCase useCase;
  late MockLogger logger;

  setUp(() {
    useCase = MockLoginUseCase();
    logger = MockLogger();
  });

  const customerId = '08.01.001.410233';
  const password = 'gulshan144';

  LoginCubit buildCubit() {
    final cubit = LoginCubit(useCase, logger)
      ..setCustomerId(customerId)
      ..setPassword(password);
    return cubit;
  }

  test('emits loading then success and keeps the submitted entity', () async {
    when(() => useCase.execute(any())).thenAnswer((_) async {});
    final cubit = buildCubit();

    final done = expectLater(
      cubit.stream,
      emitsInOrder([
        predicate<LoginState>((s) => s.loginStatus.isLoading),
        predicate<LoginState>(
          (s) =>
              s.loginStatus.isSuccess &&
              s.loginEntity ==
                  const LoginEntity(username: customerId, password: password),
        ),
      ]),
    );

    await cubit.submit();
    await done;
    await cubit.close();
  });

  test('emits loading then failure when the use case throws', () async {
    when(() => useCase.execute(any())).thenThrow(const ResponseError.unknown());
    final cubit = buildCubit();

    final done = expectLater(
      cubit.stream,
      emitsInOrder([
        predicate<LoginState>((s) => s.loginStatus.isLoading),
        predicate<LoginState>((s) => s.loginStatus.isFailure),
      ]),
    );

    await cubit.submit();
    await done;
    await cubit.close();
  });

  test('flags an empty password inline instead of calling the use case', () {
    final cubit = LoginCubit(useCase, logger)..setCustomerId(customerId);

    cubit.submit();

    expect(cubit.state.showEmptyPasswordError, isTrue);
    expect(cubit.state.loginStatus.initial, isTrue);
    verifyNever(() => useCase.execute(any()));
  });

  test('otp mode keeps only six digits and gates submission', () {
    final cubit = LoginCubit(useCase, logger)
      ..switchMode(AuthMode.otp)
      ..setOtp('12a34');

    expect(cubit.state.otp, '1234');
    expect(cubit.state.canSubmitOtp, isFalse);

    cubit.setOtp('1234567890');

    expect(cubit.state.otp, '123456');
    expect(cubit.state.canSubmitOtp, isTrue);
  });
}
