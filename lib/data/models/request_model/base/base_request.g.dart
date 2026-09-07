// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginRequestModel _$LoginRequestModelFromJson(Map<String, dynamic> json) =>
    _LoginRequestModel(
      username: json['username'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$LoginRequestModelToJson(_LoginRequestModel instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
    };

_RefreshRequestModel _$RefreshRequestModelFromJson(Map<String, dynamic> json) =>
    _RefreshRequestModel(refreshToken: json['refresh_token'] as String);

Map<String, dynamic> _$RefreshRequestModelToJson(
  _RefreshRequestModel instance,
) => <String, dynamic>{'refresh_token': instance.refreshToken};

_AutopayRequestModel _$AutopayRequestModelFromJson(Map<String, dynamic> json) =>
    _AutopayRequestModel(
      enabled: json['enabled'] as bool,
      timing: $enumDecode(_$AutopayTimingEnumMap, json['timing']),
      connectionIds: (json['connection_ids'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      paymentMethodId: json['payment_method_id'] as String?,
    );

Map<String, dynamic> _$AutopayRequestModelToJson(
  _AutopayRequestModel instance,
) => <String, dynamic>{
  'enabled': instance.enabled,
  'timing': _$AutopayTimingEnumMap[instance.timing]!,
  'connection_ids': instance.connectionIds,
  'payment_method_id': instance.paymentMethodId,
};

const _$AutopayTimingEnumMap = {
  AutopayTiming.threeDaysBeforeDue: 'three_days_before_due',
  AutopayTiming.onDueDate: 'on_due_date',
  AutopayTiming.firstOfMonth: 'first_of_month',
};

_ChangePackageRequestModel _$ChangePackageRequestModelFromJson(
  Map<String, dynamic> json,
) => _ChangePackageRequestModel(packageId: (json['package_id'] as num).toInt());

Map<String, dynamic> _$ChangePackageRequestModelToJson(
  _ChangePackageRequestModel instance,
) => <String, dynamic>{'package_id': instance.packageId};

_WifiSettingsRequestModel _$WifiSettingsRequestModelFromJson(
  Map<String, dynamic> json,
) => _WifiSettingsRequestModel(
  ssid: json['ssid'] as String,
  password: json['password'] as String,
  band: $enumDecode(_$WifiBandEnumMap, json['band']),
  guestNetworkEnabled: json['guest_network_enabled'] as bool,
);

Map<String, dynamic> _$WifiSettingsRequestModelToJson(
  _WifiSettingsRequestModel instance,
) => <String, dynamic>{
  'ssid': instance.ssid,
  'password': instance.password,
  'band': _$WifiBandEnumMap[instance.band]!,
  'guest_network_enabled': instance.guestNetworkEnabled,
};

const _$WifiBandEnumMap = {
  WifiBand.ghz24: 'ghz24',
  WifiBand.ghz5: 'ghz5',
  WifiBand.both: 'both',
};

_CreateTicketRequestModel _$CreateTicketRequestModelFromJson(
  Map<String, dynamic> json,
) => _CreateTicketRequestModel(
  connectionId: (json['connection_id'] as num).toInt(),
  issueType: $enumDecode(_$TicketIssueTypeEnumMap, json['issue_type']),
  description: json['description'] as String,
  preferredVisitTime: json['preferred_visit_time'] as String?,
);

Map<String, dynamic> _$CreateTicketRequestModelToJson(
  _CreateTicketRequestModel instance,
) => <String, dynamic>{
  'connection_id': instance.connectionId,
  'issue_type': _$TicketIssueTypeEnumMap[instance.issueType]!,
  'description': instance.description,
  'preferred_visit_time': instance.preferredVisitTime,
};

const _$TicketIssueTypeEnumMap = {
  TicketIssueType.noConnection: 'no_connection',
  TicketIssueType.slowSpeed: 'slow_speed',
  TicketIssueType.frequentDrops: 'frequent_drops',
  TicketIssueType.billing: 'billing',
};

_TicketReplyRequestModel _$TicketReplyRequestModelFromJson(
  Map<String, dynamic> json,
) => _TicketReplyRequestModel(body: json['body'] as String);

Map<String, dynamic> _$TicketReplyRequestModelToJson(
  _TicketReplyRequestModel instance,
) => <String, dynamic>{'body': instance.body};
