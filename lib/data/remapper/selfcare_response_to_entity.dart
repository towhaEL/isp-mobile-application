import 'package:isp_selfcare/data/models/response_model/base/base_response.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';

/// DTO → entity mappings for the self-care feature set.
///
/// Every mapper here follows the same rule as the billing ones: the wire types
/// are all-optional because a field can go missing, the entities are not,
/// and the defaults chosen below are the ones that fail safe — an unknown
/// device is not trusted, a ticket with no status is still open, autopay with
/// no source is off.

// ── Autopay and payment ─────────────────────────────────────────────────────

extension PaymentMethodResponseMapper on PaymentMethodResponseModel {
  PaymentMethodEntity toEntity() => PaymentMethodEntity(
    id: id ?? '',
    name: name ?? '',
    kind: kind ?? PaymentMethodKind.wallet,
    maskedAccount: maskedAccount,
  );
}

extension PaymentMethodListMapper on List<PaymentMethodResponseModel> {
  List<PaymentMethodEntity> toEntities() => map((m) => m.toEntity()).toList();
}

extension AutopayResponseMapper on AutopayResponseModel {
  AutopayConfigEntity toEntity() => AutopayConfigEntity(
    enabled: enabled ?? false,
    timing: timing ?? AutopayTiming.threeDaysBeforeDue,
    connectionIds: connectionIds,
    source: source?.toEntity(),
  );
}

extension ProrationQuoteResponseMapper on ProrationQuoteResponseModel {
  ProrationQuoteEntity toEntity() => ProrationQuoteEntity(
    daysLeftInCycle: daysLeftInCycle ?? 0,
    creditForUnusedDays: creditForUnusedDays ?? 0,
    newPlanRemainder: newPlanRemainder ?? 0,
    dueToday: dueToday ?? 0,
    nextCycleAmount: nextCycleAmount ?? 0,
    currency: currency ?? 'BDT',
  );
}

extension PaymentReceiptResponseMapper on PaymentReceiptResponseModel {
  PaymentReceiptEntity toEntity() => PaymentReceiptEntity(
    receiptNumber: receiptNumber ?? '',
    amount: amount ?? 0,
    currency: currency ?? 'BDT',
    channel: channel ?? '',
    connectionLabel: connectionLabel ?? '',
    paidAt: paidAt ?? DateTime.now(),
    serviceRunsTo: serviceRunsTo,
  );
}

// ── Support ─────────────────────────────────────────────────────────────────

extension TicketResponseMapper on TicketResponseModel {
  TicketEntity toEntity() => TicketEntity(
    id: id ?? '',
    title: title ?? '',
    // A ticket whose status did not survive the trip is still the customer's
    // open problem; defaulting it to closed would hide it.
    status: status ?? TicketStatus.open,
    createdAt: createdAt ?? DateTime.now(),
    replyCount: replyCount ?? 0,
    connectionId: connectionId,
    eta: eta,
  );
}

extension TicketListMapper on List<TicketResponseModel> {
  List<TicketEntity> toEntities() => map((t) => t.toEntity()).toList();
}

extension TicketMessageResponseMapper on TicketMessageResponseModel {
  TicketMessageEntity toEntity() => TicketMessageEntity(
    id: id ?? '',
    body: body ?? '',
    sentAt: sentAt ?? DateTime.now(),
    fromCustomer: fromCustomer ?? false,
    authorLabel: authorLabel,
  );
}

extension TicketMessageListMapper on List<TicketMessageResponseModel> {
  List<TicketMessageEntity> toEntities() => map((m) => m.toEntity()).toList();
}

extension SupportContactResponseMapper on SupportContactResponseModel {
  SupportContactEntity toEntity() => SupportContactEntity(
    channel: channel ?? SupportChannel.hotline,
    value: value ?? '',
  );
}

extension SupportContactListMapper on List<SupportContactResponseModel> {
  List<SupportContactEntity> toEntities() => map((c) => c.toEntity()).toList();
}

extension LineCheckResponseMapper on LineCheckResponseModel {
  LineCheckEntity toEntity() => LineCheckEntity(
    faultFound: faultFound ?? false,
    checkedAt: checkedAt ?? DateTime.now(),
    detail: detail,
  );
}

extension ServiceAreaResponseMapper on ServiceAreaResponseModel {
  ServiceAreaEntity toEntity() => ServiceAreaEntity(
    id: id ?? '',
    name: name ?? '',
    // Unknown coverage means "survey needed", never "we can move you".
    isCovered: isCovered ?? false,
  );
}

extension ServiceAreaListMapper on List<ServiceAreaResponseModel> {
  List<ServiceAreaEntity> toEntities() => map((a) => a.toEntity()).toList();
}

// ── Network ─────────────────────────────────────────────────────────────────

extension WifiSettingsResponseMapper on WifiSettingsResponseModel {
  WifiSettingsEntity toEntity() => WifiSettingsEntity(
    ssid: ssid ?? '',
    password: password ?? '',
    band: band ?? WifiBand.both,
    guestNetworkEnabled: guestNetworkEnabled ?? false,
    routerModel: routerModel,
    guestSsid: guestSsid,
  );
}

extension ConnectedDeviceResponseMapper on ConnectedDeviceResponseModel {
  ConnectedDeviceEntity toEntity() => ConnectedDeviceEntity(
    id: id ?? '',
    name: name ?? '',
    kind: kind ?? DeviceKind.unknown,
    ipAddress: ipAddress ?? '',
    throughputMbps: throughputMbps ?? 0,
    isBlocked: isBlocked ?? false,
  );
}

extension ConnectedDeviceListMapper on List<ConnectedDeviceResponseModel> {
  List<ConnectedDeviceEntity> toEntities() => map((d) => d.toEntity()).toList();
}

extension UsageBucketResponseMapper on UsageBucketResponseModel {
  UsageBucketEntity toEntity() => UsageBucketEntity(
    label: label ?? '',
    downloadGb: downloadGb ?? 0,
    uploadGb: uploadGb ?? 0,
  );
}

extension UsageSummaryResponseMapper on UsageSummaryResponseModel {
  UsageSummaryEntity toEntity() => UsageSummaryEntity(
    range: range ?? UsageRange.sevenDays,
    downloadGb: downloadGb ?? 0,
    uploadGb: uploadGb ?? 0,
    buckets: buckets.map((b) => b.toEntity()).toList(),
  );
}

extension SpeedTestResponseMapper on SpeedTestResponseModel {
  SpeedTestResultEntity toEntity() => SpeedTestResultEntity(
    downloadMbps: downloadMbps ?? 0,
    uploadMbps: uploadMbps ?? 0,
    pingMs: pingMs ?? 0,
    jitterMs: jitterMs ?? 0,
    measuredAt: measuredAt ?? DateTime.now(),
    serverLabel: serverLabel,
  );
}

// ── Rewards and referrals ───────────────────────────────────────────────────

extension RedeemOptionResponseMapper on RedeemOptionResponseModel {
  RedeemOptionEntity toEntity() =>
      RedeemOptionEntity(id: id ?? '', title: title ?? '', cost: cost ?? 0);
}

extension RewardLedgerResponseMapper on RewardLedgerResponseModel {
  RewardLedgerEntryEntity toEntity() => RewardLedgerEntryEntity(
    id: id ?? '',
    description: description ?? '',
    occurredAt: occurredAt ?? DateTime.now(),
    delta: delta ?? 0,
  );
}

extension RewardsResponseMapper on RewardsResponseModel {
  RewardsEntity toEntity() => RewardsEntity(
    points: points ?? 0,
    pointsPerCurrencyUnit: pointsPerCurrencyUnit ?? 10,
    options: options.map((o) => o.toEntity()).toList(),
    ledger: ledger.map((l) => l.toEntity()).toList(),
  );
}

extension ReferralInviteResponseMapper on ReferralInviteResponseModel {
  ReferralInviteEntity toEntity() => ReferralInviteEntity(
    id: id ?? '',
    name: name ?? '',
    status: status ?? ReferralInviteStatus.inProgress,
    progressLabel: progressLabel ?? '',
  );
}

extension ReferralResponseMapper on ReferralResponseModel {
  ReferralEntity toEntity() => ReferralEntity(
    code: code ?? '',
    invitesUsed: invitesUsed ?? 0,
    pointsEarned: pointsEarned ?? 0,
    invites: invites.map((i) => i.toEntity()).toList(),
  );
}

// ── Notifications and offers ────────────────────────────────────────────────

extension NotificationResponseMapper on NotificationResponseModel {
  NotificationEntity toEntity() => NotificationEntity(
    id: id ?? '',
    title: title ?? '',
    body: body ?? '',
    category: category ?? NotificationCategory.bill,
    sentAt: sentAt ?? DateTime.now(),
    isRead: isRead ?? false,
  );
}

extension NotificationListMapper on List<NotificationResponseModel> {
  List<NotificationEntity> toEntities() => map((n) => n.toEntity()).toList();
}

extension NotificationPreferenceResponseMapper
    on NotificationPreferenceResponseModel {
  NotificationPreferenceEntity toEntity() => NotificationPreferenceEntity(
    category: category ?? NotificationCategory.bill,
    enabled: enabled ?? true,
  );
}

extension NotificationPreferenceListMapper
    on List<NotificationPreferenceResponseModel> {
  List<NotificationPreferenceEntity> toEntities() =>
      map((p) => p.toEntity()).toList();
}

extension OfferResponseMapper on OfferResponseModel {
  OfferEntity toEntity() => OfferEntity(
    id: id ?? '',
    kicker: kicker ?? '',
    title: title ?? '',
    body: body ?? '',
    imageUrl: imageUrl,
  );
}

extension OfferListMapper on List<OfferResponseModel> {
  List<OfferEntity> toEntities() => map((o) => o.toEntity()).toList();
}
