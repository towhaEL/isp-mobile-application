// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthTokenResponseModel _$AuthTokenResponseModelFromJson(
  Map<String, dynamic> json,
) => _AuthTokenResponseModel(
  accessToken: json['access_token'] as String?,
  refreshToken: json['refresh_token'] as String?,
  tokenType: json['token_type'] as String?,
  expiresIn: (json['expires_in'] as num?)?.toInt(),
);

Map<String, dynamic> _$AuthTokenResponseModelToJson(
  _AuthTokenResponseModel instance,
) => <String, dynamic>{
  'access_token': instance.accessToken,
  'refresh_token': instance.refreshToken,
  'token_type': instance.tokenType,
  'expires_in': instance.expiresIn,
};

_AccountSummaryResponseModel _$AccountSummaryResponseModelFromJson(
  Map<String, dynamic> json,
) => _AccountSummaryResponseModel(
  customerId: (json['customer_id'] as num?)?.toInt(),
  outstandingAmount: const NullableDecimalConverter().fromJson(
    json['outstanding_amount'],
  ),
  creditBalance: const NullableDecimalConverter().fromJson(
    json['credit_balance'],
  ),
  currency: json['currency'] as String?,
  overdueInvoiceCount: (json['overdue_invoice_count'] as num?)?.toInt(),
  nextDueDate: json['next_due_date'] == null
      ? null
      : DateTime.parse(json['next_due_date'] as String),
);

Map<String, dynamic> _$AccountSummaryResponseModelToJson(
  _AccountSummaryResponseModel instance,
) => <String, dynamic>{
  'customer_id': instance.customerId,
  'outstanding_amount': const NullableDecimalConverter().toJson(
    instance.outstandingAmount,
  ),
  'credit_balance': const NullableDecimalConverter().toJson(
    instance.creditBalance,
  ),
  'currency': instance.currency,
  'overdue_invoice_count': instance.overdueInvoiceCount,
  'next_due_date': instance.nextDueDate?.toIso8601String(),
};

_PaymentMethodResponseModel _$PaymentMethodResponseModelFromJson(
  Map<String, dynamic> json,
) => _PaymentMethodResponseModel(
  id: json['id'] as String?,
  name: json['name'] as String?,
  kind: $enumDecodeNullable(_$PaymentMethodKindEnumMap, json['kind']),
  maskedAccount: json['masked_account'] as String?,
);

Map<String, dynamic> _$PaymentMethodResponseModelToJson(
  _PaymentMethodResponseModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'kind': _$PaymentMethodKindEnumMap[instance.kind],
  'masked_account': instance.maskedAccount,
};

const _$PaymentMethodKindEnumMap = {
  PaymentMethodKind.wallet: 'wallet',
  PaymentMethodKind.card: 'card',
  PaymentMethodKind.bank: 'bank',
};

_AutopayResponseModel _$AutopayResponseModelFromJson(
  Map<String, dynamic> json,
) => _AutopayResponseModel(
  enabled: json['enabled'] as bool?,
  timing: $enumDecodeNullable(_$AutopayTimingEnumMap, json['timing']),
  connectionIds:
      (json['connection_ids'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList() ??
      const <int>[],
  source: json['source'] == null
      ? null
      : PaymentMethodResponseModel.fromJson(
          json['source'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$AutopayResponseModelToJson(
  _AutopayResponseModel instance,
) => <String, dynamic>{
  'enabled': instance.enabled,
  'timing': _$AutopayTimingEnumMap[instance.timing],
  'connection_ids': instance.connectionIds,
  'source': instance.source?.toJson(),
};

const _$AutopayTimingEnumMap = {
  AutopayTiming.threeDaysBeforeDue: 'three_days_before_due',
  AutopayTiming.onDueDate: 'on_due_date',
  AutopayTiming.firstOfMonth: 'first_of_month',
};

_ProrationQuoteResponseModel _$ProrationQuoteResponseModelFromJson(
  Map<String, dynamic> json,
) => _ProrationQuoteResponseModel(
  daysLeftInCycle: (json['days_left_in_cycle'] as num?)?.toInt(),
  creditForUnusedDays: const NullableDecimalConverter().fromJson(
    json['credit_for_unused_days'],
  ),
  newPlanRemainder: const NullableDecimalConverter().fromJson(
    json['new_plan_remainder'],
  ),
  dueToday: const NullableDecimalConverter().fromJson(json['due_today']),
  nextCycleAmount: const NullableDecimalConverter().fromJson(
    json['next_cycle_amount'],
  ),
  currency: json['currency'] as String?,
);

Map<String, dynamic> _$ProrationQuoteResponseModelToJson(
  _ProrationQuoteResponseModel instance,
) => <String, dynamic>{
  'days_left_in_cycle': instance.daysLeftInCycle,
  'credit_for_unused_days': const NullableDecimalConverter().toJson(
    instance.creditForUnusedDays,
  ),
  'new_plan_remainder': const NullableDecimalConverter().toJson(
    instance.newPlanRemainder,
  ),
  'due_today': const NullableDecimalConverter().toJson(instance.dueToday),
  'next_cycle_amount': const NullableDecimalConverter().toJson(
    instance.nextCycleAmount,
  ),
  'currency': instance.currency,
};

_PaymentReceiptResponseModel _$PaymentReceiptResponseModelFromJson(
  Map<String, dynamic> json,
) => _PaymentReceiptResponseModel(
  receiptNumber: json['receipt_number'] as String?,
  amount: const NullableDecimalConverter().fromJson(json['amount']),
  currency: json['currency'] as String?,
  channel: json['channel'] as String?,
  connectionLabel: json['connection_label'] as String?,
  paidAt: json['paid_at'] == null
      ? null
      : DateTime.parse(json['paid_at'] as String),
  serviceRunsTo: json['service_runs_to'] == null
      ? null
      : DateTime.parse(json['service_runs_to'] as String),
);

Map<String, dynamic> _$PaymentReceiptResponseModelToJson(
  _PaymentReceiptResponseModel instance,
) => <String, dynamic>{
  'receipt_number': instance.receiptNumber,
  'amount': const NullableDecimalConverter().toJson(instance.amount),
  'currency': instance.currency,
  'channel': instance.channel,
  'connection_label': instance.connectionLabel,
  'paid_at': instance.paidAt?.toIso8601String(),
  'service_runs_to': instance.serviceRunsTo?.toIso8601String(),
};

_InvoiceResponseModel _$InvoiceResponseModelFromJson(
  Map<String, dynamic> json,
) => _InvoiceResponseModel(
  id: (json['id'] as num?)?.toInt(),
  invoiceCode: json['invoice_code'] as String?,
  connectionId: (json['connection_id'] as num?)?.toInt(),
  customerId: (json['customer_id'] as num?)?.toInt(),
  invoiceType: $enumDecodeNullable(_$InvoiceTypeEnumMap, json['invoice_type']),
  status: $enumDecodeNullable(_$InvoiceStatusEnumMap, json['status']),
  servicePeriodStart: json['service_period_start'] == null
      ? null
      : DateTime.parse(json['service_period_start'] as String),
  servicePeriodEnd: json['service_period_end'] == null
      ? null
      : DateTime.parse(json['service_period_end'] as String),
  invoiceDate: json['invoice_date'] == null
      ? null
      : DateTime.parse(json['invoice_date'] as String),
  dueDate: json['due_date'] == null
      ? null
      : DateTime.parse(json['due_date'] as String),
  amount: const NullableDecimalConverter().fromJson(json['amount']),
  paidAmount: const NullableDecimalConverter().fromJson(json['paid_amount']),
  creditAppliedAmount: const NullableDecimalConverter().fromJson(
    json['credit_applied_amount'],
  ),
  currency: json['currency'] as String?,
  paidAt: json['paid_at'] == null
      ? null
      : DateTime.parse(json['paid_at'] as String),
  notes: json['notes'] as String?,
  lines:
      (json['lines'] as List<dynamic>?)
          ?.map(
            (e) => InvoiceLineResponseModel.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const <InvoiceLineResponseModel>[],
);

Map<String, dynamic> _$InvoiceResponseModelToJson(
  _InvoiceResponseModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'invoice_code': instance.invoiceCode,
  'connection_id': instance.connectionId,
  'customer_id': instance.customerId,
  'invoice_type': _$InvoiceTypeEnumMap[instance.invoiceType],
  'status': _$InvoiceStatusEnumMap[instance.status],
  'service_period_start': instance.servicePeriodStart?.toIso8601String(),
  'service_period_end': instance.servicePeriodEnd?.toIso8601String(),
  'invoice_date': instance.invoiceDate?.toIso8601String(),
  'due_date': instance.dueDate?.toIso8601String(),
  'amount': const NullableDecimalConverter().toJson(instance.amount),
  'paid_amount': const NullableDecimalConverter().toJson(instance.paidAmount),
  'credit_applied_amount': const NullableDecimalConverter().toJson(
    instance.creditAppliedAmount,
  ),
  'currency': instance.currency,
  'paid_at': instance.paidAt?.toIso8601String(),
  'notes': instance.notes,
  'lines': instance.lines.map((e) => e.toJson()).toList(),
};

const _$InvoiceTypeEnumMap = {
  InvoiceType.monthly: 'monthly',
  InvoiceType.advance: 'advance',
  InvoiceType.oneTime: 'one_time',
  InvoiceType.proration: 'proration',
};

const _$InvoiceStatusEnumMap = {
  InvoiceStatus.draft: 'draft',
  InvoiceStatus.pending: 'pending',
  InvoiceStatus.partiallyPaid: 'partially_paid',
  InvoiceStatus.paid: 'paid',
  InvoiceStatus.overdue: 'overdue',
  InvoiceStatus.voided: 'void',
  InvoiceStatus.writtenOff: 'written_off',
};

_InvoiceLineResponseModel _$InvoiceLineResponseModelFromJson(
  Map<String, dynamic> json,
) => _InvoiceLineResponseModel(
  id: (json['id'] as num?)?.toInt(),
  lineType: $enumDecodeNullable(_$InvoiceLineTypeEnumMap, json['line_type']),
  description: json['description'] as String?,
  quantity: const NullableDecimalConverter().fromJson(json['quantity']),
  unitAmount: const NullableDecimalConverter().fromJson(json['unit_amount']),
  amount: const NullableDecimalConverter().fromJson(json['amount']),
  reason: json['reason'] as String?,
);

Map<String, dynamic> _$InvoiceLineResponseModelToJson(
  _InvoiceLineResponseModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'line_type': _$InvoiceLineTypeEnumMap[instance.lineType],
  'description': instance.description,
  'quantity': const NullableDecimalConverter().toJson(instance.quantity),
  'unit_amount': const NullableDecimalConverter().toJson(instance.unitAmount),
  'amount': const NullableDecimalConverter().toJson(instance.amount),
  'reason': instance.reason,
};

const _$InvoiceLineTypeEnumMap = {
  InvoiceLineType.subscription: 'subscription',
  InvoiceLineType.installation: 'installation',
  InvoiceLineType.equipment: 'equipment',
  InvoiceLineType.adjustment: 'adjustment',
  InvoiceLineType.discount: 'discount',
  InvoiceLineType.waiver: 'waiver',
  InvoiceLineType.writeOff: 'write_off',
  InvoiceLineType.lateFee: 'late_fee',
  InvoiceLineType.other: 'other',
};

_PaymentResponseModel _$PaymentResponseModelFromJson(
  Map<String, dynamic> json,
) => _PaymentResponseModel(
  id: (json['id'] as num?)?.toInt(),
  invoiceId: (json['invoice_id'] as num?)?.toInt(),
  invoiceCode: json['invoice_code'] as String?,
  amount: const NullableDecimalConverter().fromJson(json['amount']),
  currency: json['currency'] as String?,
  paidAt: json['paid_at'] == null
      ? null
      : DateTime.parse(json['paid_at'] as String),
  reference: json['reference'] as String?,
  method: json['method'] as String?,
  note: json['note'] as String?,
);

Map<String, dynamic> _$PaymentResponseModelToJson(
  _PaymentResponseModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'invoice_id': instance.invoiceId,
  'invoice_code': instance.invoiceCode,
  'amount': const NullableDecimalConverter().toJson(instance.amount),
  'currency': instance.currency,
  'paid_at': instance.paidAt?.toIso8601String(),
  'reference': instance.reference,
  'method': instance.method,
  'note': instance.note,
};

_ConnectionResponseModel _$ConnectionResponseModelFromJson(
  Map<String, dynamic> json,
) => _ConnectionResponseModel(
  id: (json['id'] as num?)?.toInt(),
  code: json['code'] as String?,
  customerId: (json['customer_id'] as num?)?.toInt(),
  username: json['username'] as String?,
  packageId: (json['package_id'] as num?)?.toInt(),
  title: json['title'] as String?,
  status: $enumDecodeNullable(_$ConnectionStatusEnumMap, json['status']),
  billingType: $enumDecodeNullable(_$BillingTypeEnumMap, json['billing_type']),
  connectivityType: $enumDecodeNullable(
    _$ConnectivityTypeEnumMap,
    json['connectivity_type'],
  ),
  clientType: $enumDecodeNullable(_$ClientTypeEnumMap, json['client_type']),
  distributionPoint: json['distribution_point'] as String?,
  macAddress: json['mac_address'] as String?,
  addressLine: json['address_line'] as String?,
  connectionDate: json['connection_date'] == null
      ? null
      : DateTime.parse(json['connection_date'] as String),
  expiresAt: json['expires_at'] == null
      ? null
      : DateTime.parse(json['expires_at'] as String),
  package: json['package'] == null
      ? null
      : PackageResponseModel.fromJson(json['package'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ConnectionResponseModelToJson(
  _ConnectionResponseModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'code': instance.code,
  'customer_id': instance.customerId,
  'username': instance.username,
  'package_id': instance.packageId,
  'title': instance.title,
  'status': _$ConnectionStatusEnumMap[instance.status],
  'billing_type': _$BillingTypeEnumMap[instance.billingType],
  'connectivity_type': _$ConnectivityTypeEnumMap[instance.connectivityType],
  'client_type': _$ClientTypeEnumMap[instance.clientType],
  'distribution_point': instance.distributionPoint,
  'mac_address': instance.macAddress,
  'address_line': instance.addressLine,
  'connection_date': instance.connectionDate?.toIso8601String(),
  'expires_at': instance.expiresAt?.toIso8601String(),
  'package': instance.package?.toJson(),
};

const _$ConnectionStatusEnumMap = {
  ConnectionStatus.pending: 'pending',
  ConnectionStatus.active: 'active',
  ConnectionStatus.suspended: 'suspended',
  ConnectionStatus.terminated: 'terminated',
};

const _$BillingTypeEnumMap = {
  BillingType.prepaid: 'prepaid',
  BillingType.postpaid: 'postpaid',
};

const _$ConnectivityTypeEnumMap = {
  ConnectivityType.shared: 'shared',
  ConnectivityType.dedicated: 'dedicated',
};

const _$ClientTypeEnumMap = {
  ClientType.home: 'home',
  ClientType.business: 'business',
  ClientType.corporate: 'corporate',
  ClientType.reseller: 'reseller',
};

_CustomerResponseModel _$CustomerResponseModelFromJson(
  Map<String, dynamic> json,
) => _CustomerResponseModel(
  id: (json['id'] as num?)?.toInt(),
  code: json['code'] as String?,
  fullName: json['full_name'] as String?,
  phone: json['phone'] as String?,
  alternatePhone: json['alternate_phone'] as String?,
  email: json['email'] as String?,
  nationalId: json['national_id'] as String?,
  notes: json['notes'] as String?,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
);

Map<String, dynamic> _$CustomerResponseModelToJson(
  _CustomerResponseModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'code': instance.code,
  'full_name': instance.fullName,
  'phone': instance.phone,
  'alternate_phone': instance.alternatePhone,
  'email': instance.email,
  'national_id': instance.nationalId,
  'notes': instance.notes,
  'created_at': instance.createdAt?.toIso8601String(),
};

_WifiSettingsResponseModel _$WifiSettingsResponseModelFromJson(
  Map<String, dynamic> json,
) => _WifiSettingsResponseModel(
  ssid: json['ssid'] as String?,
  password: json['password'] as String?,
  band: $enumDecodeNullable(_$WifiBandEnumMap, json['band']),
  guestNetworkEnabled: json['guest_network_enabled'] as bool?,
  routerModel: json['router_model'] as String?,
  guestSsid: json['guest_ssid'] as String?,
);

Map<String, dynamic> _$WifiSettingsResponseModelToJson(
  _WifiSettingsResponseModel instance,
) => <String, dynamic>{
  'ssid': instance.ssid,
  'password': instance.password,
  'band': _$WifiBandEnumMap[instance.band],
  'guest_network_enabled': instance.guestNetworkEnabled,
  'router_model': instance.routerModel,
  'guest_ssid': instance.guestSsid,
};

const _$WifiBandEnumMap = {
  WifiBand.ghz24: 'ghz24',
  WifiBand.ghz5: 'ghz5',
  WifiBand.both: 'both',
};

_ConnectedDeviceResponseModel _$ConnectedDeviceResponseModelFromJson(
  Map<String, dynamic> json,
) => _ConnectedDeviceResponseModel(
  id: json['id'] as String?,
  name: json['name'] as String?,
  kind: $enumDecodeNullable(_$DeviceKindEnumMap, json['kind']),
  ipAddress: json['ip_address'] as String?,
  throughputMbps: (json['throughput_mbps'] as num?)?.toInt(),
  isBlocked: json['is_blocked'] as bool?,
);

Map<String, dynamic> _$ConnectedDeviceResponseModelToJson(
  _ConnectedDeviceResponseModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'kind': _$DeviceKindEnumMap[instance.kind],
  'ip_address': instance.ipAddress,
  'throughput_mbps': instance.throughputMbps,
  'is_blocked': instance.isBlocked,
};

const _$DeviceKindEnumMap = {
  DeviceKind.mobile: 'mobile',
  DeviceKind.laptop: 'laptop',
  DeviceKind.tv: 'tv',
  DeviceKind.camera: 'camera',
  DeviceKind.unknown: 'unknown',
};

_UsageBucketResponseModel _$UsageBucketResponseModelFromJson(
  Map<String, dynamic> json,
) => _UsageBucketResponseModel(
  label: json['label'] as String?,
  downloadGb: (json['download_gb'] as num?)?.toDouble(),
  uploadGb: (json['upload_gb'] as num?)?.toDouble(),
);

Map<String, dynamic> _$UsageBucketResponseModelToJson(
  _UsageBucketResponseModel instance,
) => <String, dynamic>{
  'label': instance.label,
  'download_gb': instance.downloadGb,
  'upload_gb': instance.uploadGb,
};

_UsageSummaryResponseModel _$UsageSummaryResponseModelFromJson(
  Map<String, dynamic> json,
) => _UsageSummaryResponseModel(
  range: $enumDecodeNullable(_$UsageRangeEnumMap, json['range']),
  downloadGb: (json['download_gb'] as num?)?.toDouble(),
  uploadGb: (json['upload_gb'] as num?)?.toDouble(),
  buckets:
      (json['buckets'] as List<dynamic>?)
          ?.map(
            (e) => UsageBucketResponseModel.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const <UsageBucketResponseModel>[],
);

Map<String, dynamic> _$UsageSummaryResponseModelToJson(
  _UsageSummaryResponseModel instance,
) => <String, dynamic>{
  'range': _$UsageRangeEnumMap[instance.range],
  'download_gb': instance.downloadGb,
  'upload_gb': instance.uploadGb,
  'buckets': instance.buckets.map((e) => e.toJson()).toList(),
};

const _$UsageRangeEnumMap = {
  UsageRange.sevenDays: 'seven_days',
  UsageRange.fifteenDays: 'fifteen_days',
  UsageRange.thirtyDays: 'thirty_days',
};

_SpeedTestResponseModel _$SpeedTestResponseModelFromJson(
  Map<String, dynamic> json,
) => _SpeedTestResponseModel(
  downloadMbps: (json['download_mbps'] as num?)?.toDouble(),
  uploadMbps: (json['upload_mbps'] as num?)?.toDouble(),
  pingMs: (json['ping_ms'] as num?)?.toInt(),
  jitterMs: (json['jitter_ms'] as num?)?.toInt(),
  measuredAt: json['measured_at'] == null
      ? null
      : DateTime.parse(json['measured_at'] as String),
  serverLabel: json['server_label'] as String?,
);

Map<String, dynamic> _$SpeedTestResponseModelToJson(
  _SpeedTestResponseModel instance,
) => <String, dynamic>{
  'download_mbps': instance.downloadMbps,
  'upload_mbps': instance.uploadMbps,
  'ping_ms': instance.pingMs,
  'jitter_ms': instance.jitterMs,
  'measured_at': instance.measuredAt?.toIso8601String(),
  'server_label': instance.serverLabel,
};

_NotificationResponseModel _$NotificationResponseModelFromJson(
  Map<String, dynamic> json,
) => _NotificationResponseModel(
  id: json['id'] as String?,
  title: json['title'] as String?,
  body: json['body'] as String?,
  category: $enumDecodeNullable(
    _$NotificationCategoryEnumMap,
    json['category'],
  ),
  sentAt: json['sent_at'] == null
      ? null
      : DateTime.parse(json['sent_at'] as String),
  isRead: json['is_read'] as bool?,
);

Map<String, dynamic> _$NotificationResponseModelToJson(
  _NotificationResponseModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'body': instance.body,
  'category': _$NotificationCategoryEnumMap[instance.category],
  'sent_at': instance.sentAt?.toIso8601String(),
  'is_read': instance.isRead,
};

const _$NotificationCategoryEnumMap = {
  NotificationCategory.bill: 'bill',
  NotificationCategory.payment: 'payment',
  NotificationCategory.outage: 'outage',
  NotificationCategory.ticket: 'ticket',
  NotificationCategory.offer: 'offer',
};

_NotificationPreferenceResponseModel
_$NotificationPreferenceResponseModelFromJson(Map<String, dynamic> json) =>
    _NotificationPreferenceResponseModel(
      category: $enumDecodeNullable(
        _$NotificationCategoryEnumMap,
        json['category'],
      ),
      enabled: json['enabled'] as bool?,
    );

Map<String, dynamic> _$NotificationPreferenceResponseModelToJson(
  _NotificationPreferenceResponseModel instance,
) => <String, dynamic>{
  'category': _$NotificationCategoryEnumMap[instance.category],
  'enabled': instance.enabled,
};

_OfferResponseModel _$OfferResponseModelFromJson(Map<String, dynamic> json) =>
    _OfferResponseModel(
      id: json['id'] as String?,
      kicker: json['kicker'] as String?,
      title: json['title'] as String?,
      body: json['body'] as String?,
      imageUrl: json['image_url'] as String?,
    );

Map<String, dynamic> _$OfferResponseModelToJson(_OfferResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'kicker': instance.kicker,
      'title': instance.title,
      'body': instance.body,
      'image_url': instance.imageUrl,
    };

_PackageResponseModel _$PackageResponseModelFromJson(
  Map<String, dynamic> json,
) => _PackageResponseModel(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  code: json['code'] as String?,
  description: json['description'] as String?,
  downloadKbps: (json['download_kbps'] as num?)?.toInt(),
  uploadKbps: (json['upload_kbps'] as num?)?.toInt(),
  price: const NullableDecimalConverter().fromJson(json['price']),
  currency: json['currency'] as String?,
  validityDays: (json['validity_days'] as num?)?.toInt(),
  isActive: json['is_active'] as bool?,
  rateLimit: json['rate_limit'] as String?,
);

Map<String, dynamic> _$PackageResponseModelToJson(
  _PackageResponseModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'code': instance.code,
  'description': instance.description,
  'download_kbps': instance.downloadKbps,
  'upload_kbps': instance.uploadKbps,
  'price': const NullableDecimalConverter().toJson(instance.price),
  'currency': instance.currency,
  'validity_days': instance.validityDays,
  'is_active': instance.isActive,
  'rate_limit': instance.rateLimit,
};

_RedeemOptionResponseModel _$RedeemOptionResponseModelFromJson(
  Map<String, dynamic> json,
) => _RedeemOptionResponseModel(
  id: json['id'] as String?,
  title: json['title'] as String?,
  cost: (json['cost'] as num?)?.toInt(),
);

Map<String, dynamic> _$RedeemOptionResponseModelToJson(
  _RedeemOptionResponseModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'cost': instance.cost,
};

_RewardLedgerResponseModel _$RewardLedgerResponseModelFromJson(
  Map<String, dynamic> json,
) => _RewardLedgerResponseModel(
  id: json['id'] as String?,
  description: json['description'] as String?,
  occurredAt: json['occurred_at'] == null
      ? null
      : DateTime.parse(json['occurred_at'] as String),
  delta: (json['delta'] as num?)?.toInt(),
);

Map<String, dynamic> _$RewardLedgerResponseModelToJson(
  _RewardLedgerResponseModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'description': instance.description,
  'occurred_at': instance.occurredAt?.toIso8601String(),
  'delta': instance.delta,
};

_RewardsResponseModel _$RewardsResponseModelFromJson(
  Map<String, dynamic> json,
) => _RewardsResponseModel(
  points: (json['points'] as num?)?.toInt(),
  pointsPerCurrencyUnit: (json['points_per_currency_unit'] as num?)?.toInt(),
  options:
      (json['options'] as List<dynamic>?)
          ?.map(
            (e) =>
                RedeemOptionResponseModel.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const <RedeemOptionResponseModel>[],
  ledger:
      (json['ledger'] as List<dynamic>?)
          ?.map(
            (e) =>
                RewardLedgerResponseModel.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const <RewardLedgerResponseModel>[],
);

Map<String, dynamic> _$RewardsResponseModelToJson(
  _RewardsResponseModel instance,
) => <String, dynamic>{
  'points': instance.points,
  'points_per_currency_unit': instance.pointsPerCurrencyUnit,
  'options': instance.options.map((e) => e.toJson()).toList(),
  'ledger': instance.ledger.map((e) => e.toJson()).toList(),
};

_ReferralInviteResponseModel _$ReferralInviteResponseModelFromJson(
  Map<String, dynamic> json,
) => _ReferralInviteResponseModel(
  id: json['id'] as String?,
  name: json['name'] as String?,
  status: $enumDecodeNullable(_$ReferralInviteStatusEnumMap, json['status']),
  progressLabel: json['progress_label'] as String?,
);

Map<String, dynamic> _$ReferralInviteResponseModelToJson(
  _ReferralInviteResponseModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'status': _$ReferralInviteStatusEnumMap[instance.status],
  'progress_label': instance.progressLabel,
};

const _$ReferralInviteStatusEnumMap = {
  ReferralInviteStatus.inProgress: 'in_progress',
  ReferralInviteStatus.paidOut: 'paid_out',
  ReferralInviteStatus.expired: 'expired',
};

_ReferralResponseModel _$ReferralResponseModelFromJson(
  Map<String, dynamic> json,
) => _ReferralResponseModel(
  code: json['code'] as String?,
  invitesUsed: (json['invites_used'] as num?)?.toInt(),
  pointsEarned: (json['points_earned'] as num?)?.toInt(),
  invites:
      (json['invites'] as List<dynamic>?)
          ?.map(
            (e) =>
                ReferralInviteResponseModel.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const <ReferralInviteResponseModel>[],
);

Map<String, dynamic> _$ReferralResponseModelToJson(
  _ReferralResponseModel instance,
) => <String, dynamic>{
  'code': instance.code,
  'invites_used': instance.invitesUsed,
  'points_earned': instance.pointsEarned,
  'invites': instance.invites.map((e) => e.toJson()).toList(),
};

_TicketResponseModel _$TicketResponseModelFromJson(Map<String, dynamic> json) =>
    _TicketResponseModel(
      id: json['id'] as String?,
      title: json['title'] as String?,
      status: $enumDecodeNullable(_$TicketStatusEnumMap, json['status']),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      replyCount: (json['reply_count'] as num?)?.toInt(),
      connectionId: (json['connection_id'] as num?)?.toInt(),
      eta: json['eta'] as String?,
    );

Map<String, dynamic> _$TicketResponseModelToJson(
  _TicketResponseModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'status': _$TicketStatusEnumMap[instance.status],
  'created_at': instance.createdAt?.toIso8601String(),
  'reply_count': instance.replyCount,
  'connection_id': instance.connectionId,
  'eta': instance.eta,
};

const _$TicketStatusEnumMap = {
  TicketStatus.open: 'open',
  TicketStatus.inProgress: 'in_progress',
  TicketStatus.resolved: 'resolved',
  TicketStatus.closed: 'closed',
};

_TicketMessageResponseModel _$TicketMessageResponseModelFromJson(
  Map<String, dynamic> json,
) => _TicketMessageResponseModel(
  id: json['id'] as String?,
  body: json['body'] as String?,
  sentAt: json['sent_at'] == null
      ? null
      : DateTime.parse(json['sent_at'] as String),
  fromCustomer: json['from_customer'] as bool?,
  authorLabel: json['author_label'] as String?,
);

Map<String, dynamic> _$TicketMessageResponseModelToJson(
  _TicketMessageResponseModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'body': instance.body,
  'sent_at': instance.sentAt?.toIso8601String(),
  'from_customer': instance.fromCustomer,
  'author_label': instance.authorLabel,
};

_SupportContactResponseModel _$SupportContactResponseModelFromJson(
  Map<String, dynamic> json,
) => _SupportContactResponseModel(
  channel: $enumDecodeNullable(_$SupportChannelEnumMap, json['channel']),
  value: json['value'] as String?,
);

Map<String, dynamic> _$SupportContactResponseModelToJson(
  _SupportContactResponseModel instance,
) => <String, dynamic>{
  'channel': _$SupportChannelEnumMap[instance.channel],
  'value': instance.value,
};

const _$SupportChannelEnumMap = {
  SupportChannel.hotline: 'hotline',
  SupportChannel.phone: 'phone',
  SupportChannel.email: 'email',
  SupportChannel.liveChat: 'live_chat',
};

_LineCheckResponseModel _$LineCheckResponseModelFromJson(
  Map<String, dynamic> json,
) => _LineCheckResponseModel(
  faultFound: json['fault_found'] as bool?,
  checkedAt: json['checked_at'] == null
      ? null
      : DateTime.parse(json['checked_at'] as String),
  detail: json['detail'] as String?,
);

Map<String, dynamic> _$LineCheckResponseModelToJson(
  _LineCheckResponseModel instance,
) => <String, dynamic>{
  'fault_found': instance.faultFound,
  'checked_at': instance.checkedAt?.toIso8601String(),
  'detail': instance.detail,
};

_ServiceAreaResponseModel _$ServiceAreaResponseModelFromJson(
  Map<String, dynamic> json,
) => _ServiceAreaResponseModel(
  id: json['id'] as String?,
  name: json['name'] as String?,
  isCovered: json['is_covered'] as bool?,
);

Map<String, dynamic> _$ServiceAreaResponseModelToJson(
  _ServiceAreaResponseModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'is_covered': instance.isCovered,
};

_UserResponseModel _$UserResponseModelFromJson(Map<String, dynamic> json) =>
    _UserResponseModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      phone: json['phone'] as String?,
      website: json['website'] as String?,
      company: json['company'] == null
          ? null
          : Company.fromJson(json['company'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserResponseModelToJson(_UserResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'email': instance.email,
      'address': instance.address?.toJson(),
      'phone': instance.phone,
      'website': instance.website,
      'company': instance.company?.toJson(),
    };

_Address _$AddressFromJson(Map<String, dynamic> json) => _Address(
  street: json['street'] as String?,
  suite: json['suite'] as String?,
  city: json['city'] as String?,
  zipcode: json['zipcode'] as String?,
  geo: json['geo'] == null
      ? null
      : Geo.fromJson(json['geo'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AddressToJson(_Address instance) => <String, dynamic>{
  'street': instance.street,
  'suite': instance.suite,
  'city': instance.city,
  'zipcode': instance.zipcode,
  'geo': instance.geo?.toJson(),
};

_Geo _$GeoFromJson(Map<String, dynamic> json) =>
    _Geo(lat: json['lat'] as String?, lng: json['lng'] as String?);

Map<String, dynamic> _$GeoToJson(_Geo instance) => <String, dynamic>{
  'lat': instance.lat,
  'lng': instance.lng,
};

_Company _$CompanyFromJson(Map<String, dynamic> json) => _Company(
  name: json['name'] as String?,
  catchPhrase: json['catchPhrase'] as String?,
  bs: json['bs'] as String?,
);

Map<String, dynamic> _$CompanyToJson(_Company instance) => <String, dynamic>{
  'name': instance.name,
  'catchPhrase': instance.catchPhrase,
  'bs': instance.bs,
};
