import 'package:isp_selfcare/data/models/response_model/base/base_response.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';
import 'package:isp_selfcare/domain/enum/billing_enums.dart';
import 'package:isp_selfcare/domain/enum/connection_status.dart';
import 'package:isp_selfcare/domain/enum/invoice_status.dart';

/// The development flavour's dataset, transcribed from the design prototype.
///
/// One place, so every mock data source tells the same story: the same three
/// connections, the same amounts, the same names. A mock that contradicts
/// itself between screens is worse than no mock, because it looks like a bug in
/// the app.
///
/// Content is English only. In production these strings come from the operator's
/// database — a customer's connection nickname and a ticket subject are data,
/// not UI copy, so they are not routed through the ARB files.
abstract class SelfcareFixtures {
  const SelfcareFixtures._();

  /// Dates are anchored to "today" rather than hard-coded, so the mock never
  /// drifts into showing a bill that came due two years ago.
  static DateTime get _today {
    final now = DateTime.now();
    return DateTime(now.year, now.month, now.day);
  }

  static DateTime _daysFromToday(int days) => _today.add(Duration(days: days));

  // ── Customer ──────────────────────────────────────────────────────────────

  static CustomerResponseModel get customer => CustomerResponseModel(
    id: 1,
    code: '08.01.001.410233',
    fullName: 'Rahim Chowdhury',
    phone: '+880 1684 252611',
    email: 'rahim.c@example.com',
    createdAt: DateTime(2024, 3, 11),
  );

  // ── Packages ──────────────────────────────────────────────────────────────

  static const PackageResponseModel surferPlus = PackageResponseModel(
    id: 1,
    name: 'Surfer Plus',
    code: 'HOME-80M',
    downloadKbps: 80000,
    uploadKbps: 80000,
    price: 1050,
    currency: 'BDT',
    validityDays: 30,
    description: 'Unmetered, rolling monthly.',
  );

  static const PackageResponseModel cheetahPrime = PackageResponseModel(
    id: 2,
    name: 'Cheetah Prime',
    code: 'HOME-100M',
    downloadKbps: 100000,
    uploadKbps: 100000,
    price: 1275,
    currency: 'BDT',
    validityDays: 30,
    description: 'Our most popular plan.',
  );

  static const PackageResponseModel eagleAdvance = PackageResponseModel(
    id: 3,
    name: 'Eagle Advance',
    code: 'HOME-130M',
    downloadKbps: 130000,
    uploadKbps: 130000,
    price: 1700,
    currency: 'BDT',
    validityDays: 30,
    description: 'Built for a busy household.',
  );

  static const PackageResponseModel hawkLite = PackageResponseModel(
    id: 4,
    name: 'Hawk Lite',
    code: 'HOME-135M',
    downloadKbps: 135000,
    uploadKbps: 135000,
    price: 1800,
    currency: 'BDT',
    validityDays: 30,
    description: 'Low contention for working from home.',
  );

  static const List<PackageResponseModel> packages = [
    surferPlus,
    cheetahPrime,
    eagleAdvance,
    hawkLite,
  ];

  // ── Connections ───────────────────────────────────────────────────────────

  static List<ConnectionResponseModel> get connections => [
    ConnectionResponseModel(
      id: 101,
      code: '08.01.001.410233',
      customerId: 1,
      username: 'rahim.gulshan',
      title: 'Gulshan home',
      packageId: surferPlus.id,
      package: surferPlus,
      status: ConnectionStatus.active,
      billingType: BillingType.prepaid,
      connectivityType: ConnectivityType.shared,
      clientType: ClientType.home,
      addressLine: 'Road 144, Gulshan, Dhaka',
      macAddress: 'B4:FB:E4:19:2C:08',
      connectionDate: DateTime(2024, 3, 11),
      expiresAt: _daysFromToday(21),
    ),
    ConnectionResponseModel(
      id: 102,
      code: '08.01.004.118902',
      customerId: 1,
      username: 'rahim.banani',
      title: 'Banani office',
      packageId: eagleAdvance.id,
      package: eagleAdvance,
      status: ConnectionStatus.active,
      billingType: BillingType.postpaid,
      connectivityType: ConnectivityType.dedicated,
      clientType: ClientType.business,
      addressLine: 'Road 11, Banani, Dhaka',
      connectionDate: DateTime(2025, 1, 20),
      expiresAt: _daysFromToday(25),
    ),
    ConnectionResponseModel(
      id: 103,
      code: '08.01.002.339471',
      customerId: 1,
      username: 'rahim.mother',
      title: "Mother's flat",
      packageId: hawkLite.id,
      package: hawkLite,
      // The design's "Grace period": the bill is overdue but the line is
      // still up. `suspended` is the walled garden, which comes later.
      status: ConnectionStatus.active,
      billingType: BillingType.prepaid,
      connectivityType: ConnectivityType.shared,
      clientType: ClientType.home,
      addressLine: 'Road 7, Mirpur, Dhaka',
      connectionDate: DateTime(2023, 11, 2),
      expiresAt: _daysFromToday(-3),
    ),
  ];

  // ── Billing ───────────────────────────────────────────────────────────────

  static AccountSummaryResponseModel get accountSummary =>
      AccountSummaryResponseModel(
        customerId: 1,
        outstandingAmount: 4550,
        creditBalance: 0,
        currency: 'BDT',
        overdueInvoiceCount: 1,
        nextDueDate: _daysFromToday(-3),
      );

  static List<InvoiceResponseModel> get invoices => [
    InvoiceResponseModel(
      id: 9001,
      invoiceCode: 'INV-2026-09-410233',
      connectionId: 101,
      customerId: 1,
      invoiceType: InvoiceType.monthly,
      status: InvoiceStatus.pending,
      servicePeriodStart: _daysFromToday(-9),
      servicePeriodEnd: _daysFromToday(21),
      invoiceDate: _daysFromToday(-9),
      dueDate: _daysFromToday(21),
      amount: 1050,
      paidAmount: 0,
      creditAppliedAmount: 0,
      currency: 'BDT',
      lines: const [
        InvoiceLineResponseModel(
          id: 1,
          lineType: InvoiceLineType.subscription,
          description: 'Surfer Plus — monthly subscription',
          quantity: 1,
          unitAmount: 1050,
          amount: 1050,
        ),
      ],
    ),
    InvoiceResponseModel(
      id: 9002,
      invoiceCode: 'INV-2026-09-118902',
      connectionId: 102,
      customerId: 1,
      invoiceType: InvoiceType.monthly,
      status: InvoiceStatus.pending,
      servicePeriodStart: _daysFromToday(-5),
      servicePeriodEnd: _daysFromToday(25),
      invoiceDate: _daysFromToday(-5),
      dueDate: _daysFromToday(25),
      amount: 1700,
      paidAmount: 0,
      creditAppliedAmount: 0,
      currency: 'BDT',
      lines: const [
        InvoiceLineResponseModel(
          id: 2,
          lineType: InvoiceLineType.subscription,
          description: 'Eagle Advance — monthly subscription',
          quantity: 1,
          unitAmount: 1700,
          amount: 1700,
        ),
      ],
    ),
    InvoiceResponseModel(
      id: 9003,
      invoiceCode: 'INV-2026-08-339471',
      connectionId: 103,
      customerId: 1,
      invoiceType: InvoiceType.monthly,
      status: InvoiceStatus.overdue,
      servicePeriodStart: _daysFromToday(-33),
      servicePeriodEnd: _daysFromToday(-3),
      invoiceDate: _daysFromToday(-33),
      dueDate: _daysFromToday(-3),
      amount: 1800,
      paidAmount: 0,
      creditAppliedAmount: 0,
      currency: 'BDT',
      lines: const [
        InvoiceLineResponseModel(
          id: 3,
          lineType: InvoiceLineType.subscription,
          description: 'Hawk Lite — monthly subscription',
          quantity: 1,
          unitAmount: 1800,
          amount: 1800,
        ),
      ],
    ),
  ];

  static List<PaymentResponseModel> get payments => [
    PaymentResponseModel(
      id: 5001,
      invoiceId: 8901,
      invoiceCode: 'INV-2026-08-410233',
      amount: 1050,
      currency: 'BDT',
      paidAt: _daysFromToday(-28),
      method: 'bKash',
      reference: 'BK9F2K11',
    ),
    PaymentResponseModel(
      id: 5002,
      invoiceId: 8801,
      invoiceCode: 'INV-2026-07-410233',
      amount: 1050,
      currency: 'BDT',
      paidAt: _daysFromToday(-41),
      method: 'bKash',
      reference: 'BK7C1M04',
    ),
    PaymentResponseModel(
      id: 5003,
      invoiceId: 8701,
      invoiceCode: 'INV-2026-06-410233',
      amount: 1050,
      currency: 'BDT',
      paidAt: _daysFromToday(-72),
      method: 'Visa',
      reference: 'VS4417',
    ),
    PaymentResponseModel(
      id: 5004,
      invoiceId: 8601,
      invoiceCode: 'INV-2026-05-410233',
      amount: 1050,
      currency: 'BDT',
      paidAt: _daysFromToday(-102),
      method: 'bKash',
      reference: 'BK3A8P77',
    ),
    PaymentResponseModel(
      id: 5005,
      invoiceId: 8501,
      invoiceCode: 'INV-2026-04-410233',
      amount: 1050,
      currency: 'BDT',
      paidAt: _daysFromToday(-133),
      method: 'Nagad',
      reference: 'NG5511X',
    ),
  ];

  /// Wallets first, then cards — the order the payment screen groups them in.
  static const List<PaymentMethodResponseModel> paymentMethods = [
    PaymentMethodResponseModel(
      id: 'bkash',
      name: 'bKash',
      kind: PaymentMethodKind.wallet,
      maskedAccount: '•••• 2611',
    ),
    PaymentMethodResponseModel(
      id: 'nagad',
      name: 'Nagad',
      kind: PaymentMethodKind.wallet,
    ),
    PaymentMethodResponseModel(
      id: 'upay',
      name: 'Upay',
      kind: PaymentMethodKind.wallet,
    ),
    PaymentMethodResponseModel(
      id: 'rocket',
      name: 'Rocket',
      kind: PaymentMethodKind.wallet,
    ),
    PaymentMethodResponseModel(
      id: 'tap',
      name: 'Tap',
      kind: PaymentMethodKind.wallet,
    ),
    PaymentMethodResponseModel(
      id: 'visa',
      name: 'Visa',
      kind: PaymentMethodKind.card,
      maskedAccount: '•••• 4417',
    ),
    PaymentMethodResponseModel(
      id: 'mastercard',
      name: 'Mastercard',
      kind: PaymentMethodKind.card,
    ),
    PaymentMethodResponseModel(
      id: 'amex',
      name: 'Amex',
      kind: PaymentMethodKind.card,
    ),
    PaymentMethodResponseModel(
      id: 'brac',
      name: 'Bank transfer',
      kind: PaymentMethodKind.bank,
      maskedAccount: 'BRAC •••• 8830',
    ),
  ];

  // ── Network ───────────────────────────────────────────────────────────────

  static const WifiSettingsResponseModel wifiSettings =
      WifiSettingsResponseModel(
        ssid: 'Chowdhury_5G',
        password: 'gulshan144',
        band: WifiBand.both,
        guestNetworkEnabled: false,
        routerModel: 'TP-Link EC230',
        guestSsid: 'Fibreline_Guest',
      );

  static const List<ConnectedDeviceResponseModel> devices = [
    ConnectedDeviceResponseModel(
      id: 'd1',
      name: 'Rahim iPhone',
      kind: DeviceKind.mobile,
      ipAddress: '192.168.0.14',
      throughputMbps: 42,
    ),
    ConnectedDeviceResponseModel(
      id: 'd2',
      name: 'Living room TV',
      kind: DeviceKind.tv,
      ipAddress: '192.168.0.21',
      throughputMbps: 18,
    ),
    ConnectedDeviceResponseModel(
      id: 'd3',
      name: 'Work laptop',
      kind: DeviceKind.laptop,
      ipAddress: '192.168.0.8',
      throughputMbps: 6,
    ),
    ConnectedDeviceResponseModel(
      id: 'd4',
      name: 'Gate camera',
      kind: DeviceKind.camera,
      ipAddress: '192.168.0.33',
      throughputMbps: 2,
    ),
    ConnectedDeviceResponseModel(
      id: 'd5',
      name: 'Unknown device',
      kind: DeviceKind.unknown,
      ipAddress: '192.168.0.47',
    ),
  ];

  static UsageSummaryResponseModel usage(UsageRange range) => switch (range) {
    UsageRange.sevenDays => const UsageSummaryResponseModel(
      range: UsageRange.sevenDays,
      downloadGb: 127,
      uploadGb: 63,
      buckets: [
        UsageBucketResponseModel(label: 'Mon', downloadGb: 18, uploadGb: 6),
        UsageBucketResponseModel(label: 'Tue', downloadGb: 22, uploadGb: 9),
        UsageBucketResponseModel(label: 'Wed', downloadGb: 9, uploadGb: 3),
        UsageBucketResponseModel(label: 'Thu', downloadGb: 31, uploadGb: 12),
        UsageBucketResponseModel(label: 'Fri', downloadGb: 14, uploadGb: 5),
        UsageBucketResponseModel(label: 'Sat', downloadGb: 20, uploadGb: 15),
        UsageBucketResponseModel(label: 'Sun', downloadGb: 24, uploadGb: 13),
      ],
    ),
    UsageRange.fifteenDays => const UsageSummaryResponseModel(
      range: UsageRange.fifteenDays,
      downloadGb: 268,
      uploadGb: 121,
      buckets: [
        UsageBucketResponseModel(label: '1-2', downloadGb: 21, uploadGb: 8),
        UsageBucketResponseModel(label: '3-4', downloadGb: 16, uploadGb: 6),
        UsageBucketResponseModel(label: '5-6', downloadGb: 26, uploadGb: 11),
        UsageBucketResponseModel(label: '7-8', downloadGb: 12, uploadGb: 4),
        UsageBucketResponseModel(label: '9-10', downloadGb: 30, uploadGb: 14),
        UsageBucketResponseModel(label: '11-12', downloadGb: 19, uploadGb: 9),
        UsageBucketResponseModel(label: '13-15', downloadGb: 23, uploadGb: 12),
      ],
    ),
    UsageRange.thirtyDays => const UsageSummaryResponseModel(
      range: UsageRange.thirtyDays,
      downloadGb: 540,
      uploadGb: 244,
      buckets: [
        UsageBucketResponseModel(label: '1-4', downloadGb: 24, uploadGb: 10),
        UsageBucketResponseModel(label: '5-9', downloadGb: 28, uploadGb: 13),
        UsageBucketResponseModel(label: '10-13', downloadGb: 19, uploadGb: 7),
        UsageBucketResponseModel(label: '14-18', downloadGb: 33, uploadGb: 15),
        UsageBucketResponseModel(label: '19-22', downloadGb: 22, uploadGb: 9),
        UsageBucketResponseModel(label: '23-26', downloadGb: 26, uploadGb: 12),
        UsageBucketResponseModel(label: '27-30', downloadGb: 30, uploadGb: 14),
      ],
    ),
  };

  static SpeedTestResponseModel get speedTest => SpeedTestResponseModel(
    downloadMbps: 78.4,
    uploadMbps: 76.1,
    pingMs: 8,
    jitterMs: 2,
    measuredAt: DateTime.now(),
    serverLabel: 'Dhaka · Gulshan POP',
  );

  // ── Support ───────────────────────────────────────────────────────────────

  static LineCheckResponseModel get lineCheck => LineCheckResponseModel(
    faultFound: false,
    checkedAt: DateTime.now().subtract(const Duration(minutes: 3)),
  );

  static const List<SupportContactResponseModel> contacts = [
    SupportContactResponseModel(
      channel: SupportChannel.hotline,
      value: '16335',
    ),
    SupportContactResponseModel(
      channel: SupportChannel.phone,
      value: '09678 123 123',
    ),
    SupportContactResponseModel(
      channel: SupportChannel.email,
      value: 'support@example.net',
    ),
    SupportContactResponseModel(
      channel: SupportChannel.liveChat,
      value: 'Usually replies in 4 min',
    ),
  ];

  static List<TicketResponseModel> get tickets => [
    TicketResponseModel(
      id: '4402',
      title: 'Slow speed after 9pm',
      status: TicketStatus.inProgress,
      createdAt: _daysFromToday(-5),
      replyCount: 3,
      connectionId: 101,
      eta: 'Reply within 2 hours',
    ),
    TicketResponseModel(
      id: '4189',
      title: 'Router replacement',
      status: TicketStatus.closed,
      createdAt: _daysFromToday(-24),
      replyCount: 6,
      connectionId: 101,
    ),
  ];

  static List<TicketMessageResponseModel> get ticketMessages => [
    TicketMessageResponseModel(
      id: 'm1',
      body:
          'Speed drops below 10 Mbps every night after 9pm. Router is 2 metres '
          'away.',
      sentAt: _daysFromToday(-5).add(const Duration(hours: 21, minutes: 40)),
      fromCustomer: true,
      authorLabel: 'You',
    ),
    TicketMessageResponseModel(
      id: 'm2',
      body:
          'Thanks — we can see congestion on your OLT port. Escalating to the '
          'field team tonight.',
      sentAt: _daysFromToday(-5).add(const Duration(hours: 22, minutes: 5)),
      fromCustomer: false,
      authorLabel: 'Support',
    ),
    TicketMessageResponseModel(
      id: 'm3',
      body:
          'Port re-balanced. Please run a speed test after 9pm today and tell '
          'us what you see.',
      sentAt: _daysFromToday(-3).add(const Duration(hours: 11, minutes: 12)),
      fromCustomer: false,
      authorLabel: 'Support',
    ),
  ];

  static const List<ServiceAreaResponseModel> serviceAreas = [
    ServiceAreaResponseModel(id: 'a1', name: 'Gulshan 2', isCovered: true),
    ServiceAreaResponseModel(id: 'a2', name: 'Banani DOHS', isCovered: true),
    ServiceAreaResponseModel(
      id: 'a3',
      name: 'Bashundhara R/A',
      isCovered: true,
    ),
    ServiceAreaResponseModel(id: 'a4', name: 'Savar', isCovered: false),
  ];

  // ── Rewards, referrals, notifications, offers ─────────────────────────────

  static RewardsResponseModel get rewards => RewardsResponseModel(
    points: 1240,
    pointsPerCurrencyUnit: 10,
    options: const [
      RedeemOptionResponseModel(
        id: 'c50',
        title: 'Tk 50 bill credit',
        cost: 500,
      ),
      RedeemOptionResponseModel(
        id: 'c100',
        title: 'Tk 100 bill credit',
        cost: 1000,
      ),
      RedeemOptionResponseModel(
        id: 'c200',
        title: 'Tk 200 bill credit',
        cost: 2000,
      ),
      RedeemOptionResponseModel(
        id: 'game',
        title: 'Gaming route, one month',
        cost: 1500,
      ),
    ],
    ledger: [
      RewardLedgerResponseModel(
        id: 'l1',
        description: 'Referral — Shahin',
        occurredAt: _daysFromToday(-16),
        delta: 500,
      ),
      RewardLedgerResponseModel(
        id: 'l2',
        description: 'On-time payment',
        occurredAt: _daysFromToday(-28),
        delta: 120,
      ),
      RewardLedgerResponseModel(
        id: 'l3',
        description: 'Redeemed Tk 50 credit',
        occurredAt: _daysFromToday(-36),
        delta: -500,
      ),
      RewardLedgerResponseModel(
        id: 'l4',
        description: 'Anniversary bonus',
        occurredAt: DateTime(2026, 3, 11),
        delta: 1000,
      ),
    ],
  );

  static const ReferralResponseModel referral = ReferralResponseModel(
    code: 'RAHIM-4X2',
    invitesUsed: 3,
    pointsEarned: 1000,
    invites: [
      ReferralInviteResponseModel(
        id: 'i1',
        name: 'Shahin (Road 141)',
        status: ReferralInviteStatus.paidOut,
        progressLabel: 'Line live 22 Aug',
      ),
      ReferralInviteResponseModel(
        id: 'i2',
        name: 'Nusrat (Road 144)',
        status: ReferralInviteStatus.inProgress,
        progressLabel: 'Survey booked 3 Sep',
      ),
      ReferralInviteResponseModel(
        id: 'i3',
        name: 'Imran (Banani)',
        status: ReferralInviteStatus.expired,
        progressLabel: 'Code used 28 Aug',
      ),
    ],
  );

  static List<NotificationResponseModel> get notifications => [
    NotificationResponseModel(
      id: 'n1',
      title: 'Payment received',
      body: 'Tk 1,050 credited to 410233. Service runs to 28 Oct.',
      category: NotificationCategory.payment,
      sentAt: _daysFromToday(-28),
    ),
    NotificationResponseModel(
      id: 'n2',
      title: 'Bill due tomorrow',
      body: "Mother's flat — pay by 6:41 PM to keep the line active.",
      category: NotificationCategory.bill,
      sentAt: _daysFromToday(-4),
    ),
    NotificationResponseModel(
      id: 'n3',
      title: 'Planned maintenance',
      body: 'Gulshan zone, 2–4 AM Friday. Brief drops expected.',
      category: NotificationCategory.outage,
      sentAt: _daysFromToday(-48),
      isRead: true,
    ),
    NotificationResponseModel(
      id: 'n4',
      title: 'Ticket #4189 closed',
      body: 'Router replaced on site. Rate the visit.',
      category: NotificationCategory.ticket,
      sentAt: _daysFromToday(-24),
      isRead: true,
    ),
  ];

  static const List<NotificationPreferenceResponseModel>
  notificationPreferences = [
    NotificationPreferenceResponseModel(
      category: NotificationCategory.bill,
      enabled: true,
    ),
    NotificationPreferenceResponseModel(
      category: NotificationCategory.payment,
      enabled: true,
    ),
    NotificationPreferenceResponseModel(
      category: NotificationCategory.outage,
      enabled: true,
    ),
    NotificationPreferenceResponseModel(
      category: NotificationCategory.ticket,
      enabled: true,
    ),
    NotificationPreferenceResponseModel(
      category: NotificationCategory.offer,
      enabled: false,
    ),
  ];

  static const List<OfferResponseModel> offers = [
    OfferResponseModel(
      id: 'o1',
      kicker: 'Referral',
      title: '20% off for two',
      body:
          'Refer a neighbour; you both get one month at 20% off once their '
          'line is live.',
    ),
    OfferResponseModel(
      id: 'o2',
      kicker: 'Upgrade',
      title: 'Same price, more speed',
      body: 'Cheetah Prime at 100 Mbps for your current price until December.',
    ),
    OfferResponseModel(
      id: 'o3',
      kicker: 'Gaming',
      title: 'Low-latency routing',
      body:
          'Add the gaming route for Tk 150 / month — regional peering, no data '
          'cap.',
    ),
  ];
}
