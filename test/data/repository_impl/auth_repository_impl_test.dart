import 'package:flutter_test/flutter_test.dart';
import 'package:isp_selfcare/core/helper/secure_storage_service.dart';
import 'package:isp_selfcare/data/data_source/auth/auth_data_source.dart';
import 'package:isp_selfcare/data/data_source/base/factory/data_source_factory.dart';
import 'package:isp_selfcare/data/models/request_model/base/base_request.dart';
import 'package:isp_selfcare/data/models/response_model/base/base_response.dart';
import 'package:isp_selfcare/data/repository_impl/auth/auth_repository_impl.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';
import 'package:mocktail/mocktail.dart';

class MockDataSourceFactory extends Mock implements DataSourceFactory {}

class MockAuthDataSource extends Mock implements AuthDataSource {}

class MockSecureStorageService extends Mock implements SecureStorageService {}

void main() {
  setUpAll(() {
    registerFallbackValue(const LoginRequestModel(username: '', password: ''));
    registerFallbackValue(const RefreshRequestModel(refreshToken: ''));
  });

  late MockDataSourceFactory factory;
  late MockAuthDataSource dataSource;
  late MockSecureStorageService secureStorage;
  late AuthRepositoryImpl repository;

  const tokens = AuthTokenResponseModel(
    accessToken: 'access123',
    refreshToken: 'refresh456',
    tokenType: 'bearer',
    expiresIn: 3600,
  );

  setUp(() {
    factory = MockDataSourceFactory();
    dataSource = MockAuthDataSource();
    secureStorage = MockSecureStorageService();
    when(() => factory.createAuthDataSource()).thenReturn(dataSource);
    when(() => secureStorage.setAccessToken(any())).thenAnswer((_) async {});
    when(() => secureStorage.setRefreshToken(any())).thenAnswer((_) async {});
    when(() => secureStorage.clearSession()).thenAnswer((_) async {});
    repository = AuthRepositoryImpl(factory, secureStorage);
  });

  test('login persists both tokens returned by the data source', () async {
    when(() => dataSource.login(any())).thenAnswer((_) async => tokens);

    await repository.login(
      inputModel: const LoginEntity(username: 'cust-1', password: 'pw'),
    );

    verify(() => secureStorage.setAccessToken('access123')).called(1);
    verify(() => secureStorage.setRefreshToken('refresh456')).called(1);
  });

  test(
    'login maps the entity to a request model for the data source',
    () async {
      when(() => dataSource.login(any())).thenAnswer((_) async => tokens);

      await repository.login(
        inputModel: const LoginEntity(username: 'cust-9', password: 'hunter2'),
      );

      final captured = verify(() => dataSource.login(captureAny())).captured;
      final sent = captured.single as LoginRequestModel;
      expect(sent.username, 'cust-9');
      expect(sent.password, 'hunter2');
    },
  );

  test('login rejects a response that carries no access token', () async {
    when(
      () => dataSource.login(any()),
    ).thenAnswer((_) async => const AuthTokenResponseModel());

    await expectLater(
      repository.login(
        inputModel: const LoginEntity(username: 'cust-1', password: 'pw'),
      ),
      throwsA(isA<StateError>()),
    );
    verifyNever(() => secureStorage.setAccessToken(any()));
  });

  test('logout revokes the refresh token and clears the session', () async {
    when(
      () => secureStorage.getRefreshToken(),
    ).thenAnswer((_) async => 'refresh456');
    when(() => dataSource.logout(any())).thenAnswer((_) async {});

    await repository.logout();

    final captured = verify(() => dataSource.logout(captureAny())).captured;
    expect((captured.single as RefreshRequestModel).refreshToken, 'refresh456');
    verify(() => secureStorage.clearSession()).called(1);
  });

  test('logout still clears the session when the revoke call fails', () async {
    when(
      () => secureStorage.getRefreshToken(),
    ).thenAnswer((_) async => 'refresh456');
    when(() => dataSource.logout(any())).thenThrow(Exception('offline'));

    await repository.logout();

    verify(() => secureStorage.clearSession()).called(1);
  });
}
