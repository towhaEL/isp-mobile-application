import 'package:isp_selfcare/domain/entity/base/base_entity.dart';

abstract class AuthRepository {
  /// Signs in and persists the resulting session.
  Future<void> login({required LoginEntity inputModel});

  /// Revokes the session server-side and clears it from the device.
  Future<void> logout();

  /// Whether a session is already on the device, for the splash gate.
  Future<bool> hasSession();
}
