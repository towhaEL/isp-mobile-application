import 'package:injectable/injectable.dart';
import 'package:isp_selfcare/data/data_source/auth/auth_data_source.dart';
import 'package:isp_selfcare/data/models/request_model/base/base_request.dart';
import 'package:isp_selfcare/data/models/response_model/base/base_response.dart';

/// Offline stand-in for the customer auth endpoints.
///
/// It mirrors the prototype's rule rather than inventing a stricter one: any
/// non-empty password signs you in. The development flavour exists to let
/// someone open every screen without a backend, and a credential check with no
/// credential store to check against would only be theatre.
@LazySingleton()
class AuthMockDataSource implements AuthDataSource {
  static const _accessToken = 'mock_access_token';
  static const _refreshToken = 'mock_refresh_token';

  @override
  Future<AuthTokenResponseModel> login(LoginRequestModel inputModel) async {
    await Future<void>.delayed(const Duration(milliseconds: 450));
    if (inputModel.username.isEmpty || inputModel.password.isEmpty) {
      throw Exception('Customer ID and password are both required');
    }
    return const AuthTokenResponseModel(
      accessToken: _accessToken,
      refreshToken: _refreshToken,
      tokenType: 'bearer',
      expiresIn: 3600,
    );
  }

  @override
  Future<AuthTokenResponseModel> refresh(RefreshRequestModel inputModel) async {
    await Future<void>.delayed(const Duration(milliseconds: 200));
    return const AuthTokenResponseModel(
      accessToken: _accessToken,
      refreshToken: _refreshToken,
      tokenType: 'bearer',
      expiresIn: 3600,
    );
  }

  @override
  Future<void> logout(RefreshRequestModel inputModel) async {
    await Future<void>.delayed(const Duration(milliseconds: 150));
  }
}
