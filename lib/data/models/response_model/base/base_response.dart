import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isp_selfcare/data/models/converter/decimal_converter.dart';
// The self-care feature enums (payment kind, ticket status, Wi-Fi band …) are
// declared alongside the entities that own them, so the DTOs import the domain
// to reuse them rather than mirroring a second copy that could drift.
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';
import 'package:isp_selfcare/domain/enum/billing_enums.dart';
import 'package:isp_selfcare/domain/enum/connection_status.dart';
import 'package:isp_selfcare/domain/enum/invoice_status.dart';

// Add your new model path below
part '../auth/auth_token_response_model.dart';
part '../billing/account_summary_response_model.dart';
part '../billing/autopay_response_model.dart';
part '../billing/invoice_response_model.dart';
part '../billing/payment_response_model.dart';
part '../connection/connection_response_model.dart';
part '../customer/customer_response_model.dart';
part '../network/network_response_model.dart';
part '../notification/notification_response_model.dart';
part '../package/package_response_model.dart';
part '../rewards/rewards_response_model.dart';
part '../support/support_response_model.dart';
part '../user/user_response_model.dart';

part 'base_response.freezed.dart';
part 'base_response.g.dart';
