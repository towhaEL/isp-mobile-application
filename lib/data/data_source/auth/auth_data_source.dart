import 'package:isp_selfcare/data/models/request_model/base/base_request.dart';
import 'package:isp_selfcare/data/models/response_model/base/base_response.dart';

abstract class AuthDataSource {
  /// Exchange customer credentials for an access/refresh pair.
  Future<AuthTokenResponseModel> login(LoginRequestModel inputModel);

  /// Trade a refresh token for a fresh pair.
  Future<AuthTokenResponseModel> refresh(RefreshRequestModel inputModel);

  /// Revoke the presented refresh token server-side. Signing out only on the
  /// device would leave a working token in the wild.
  Future<void> logout(RefreshRequestModel inputModel);
}
