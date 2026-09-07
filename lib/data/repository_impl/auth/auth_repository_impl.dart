import 'package:injectable/injectable.dart';
import 'package:isp_selfcare/core/helper/secure_storage_service.dart';
import 'package:isp_selfcare/data/data_source/auth/auth_data_source.dart';
import 'package:isp_selfcare/data/data_source/base/factory/data_source_factory.dart';
import 'package:isp_selfcare/data/models/request_model/base/base_request.dart';
import 'package:isp_selfcare/data/remapper/login_entity_to_request.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';
import 'package:isp_selfcare/domain/repository/auth/auth_repository.dart';

@Singleton(as: AuthRepository)
class AuthRepositoryImpl extends AuthRepository {
  AuthRepositoryImpl(DataSourceFactory factory, this._secureStorage)
    : _authDataSource = factory.createAuthDataSource();

  final AuthDataSource _authDataSource;
  final SecureStorageService _secureStorage;

  @override
  Future<void> login({required LoginEntity inputModel}) async {
    final tokens = await _authDataSource.login(inputModel.toRequestModel());

    final access = tokens.accessToken;
    if (access == null || access.isEmpty) {
      // A 200 with no token is a broken contract, not a successful sign-in;
      // failing here keeps the app from showing a signed-in shell that cannot
      // load anything.
      throw StateError('Sign-in succeeded but returned no access token');
    }
    await _secureStorage.setAccessToken(access);

    final refresh = tokens.refreshToken;
    if (refresh != null && refresh.isNotEmpty) {
      await _secureStorage.setRefreshToken(refresh);
    }
  }

  @override
  Future<void> logout() async {
    final refresh = await _secureStorage.getRefreshToken();
    if (refresh != null && refresh.isNotEmpty) {
      try {
        await _authDataSource.logout(
          RefreshRequestModel(refreshToken: refresh),
        );
      } on Exception {
        // The customer asked to sign out. If the revoke call fails — offline,
        // token already expired — clearing the device is still the right
        // outcome, and blocking on it would trap them in the app.
      }
    }
    await _secureStorage.clearSession();
  }

  @override
  Future<bool> hasSession() => _secureStorage.hasAccessToken();
}
