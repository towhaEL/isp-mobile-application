import 'package:isp_selfcare/data/models/request_model/base/base_request.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';

extension LoginEntityMapper on LoginEntity {
  /// Maps a LoginEntity to a LoginRequestModel
  LoginRequestModel toRequestModel() {
    return LoginRequestModel(username: username, password: password);
  }
}
