import 'package:freezed_annotation/freezed_annotation.dart';
// Feature enums live with the entities that own them; the request DTOs reuse
// them rather than declaring a parallel set.
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';

// Add your new model path below
part '../auth/login_request_model.dart';
part '../auth/refresh_request_model.dart';
part '../billing/autopay_request_model.dart';
part '../connection/change_package_request_model.dart';
part '../network/wifi_settings_request_model.dart';
part '../support/ticket_request_model.dart';

part 'base_request.freezed.dart';
part 'base_request.g.dart';
