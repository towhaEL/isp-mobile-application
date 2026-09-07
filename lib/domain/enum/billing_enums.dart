import 'package:freezed_annotation/freezed_annotation.dart';

/// How the line is charged.
@JsonEnum(fieldRename: FieldRename.snake)
enum BillingType { prepaid, postpaid }

/// Whether bandwidth is contended.
@JsonEnum(fieldRename: FieldRename.snake)
enum ConnectivityType { shared, dedicated }

/// Who the connection is sold to.
@JsonEnum(fieldRename: FieldRename.snake)
enum ClientType { home, business, corporate, reseller }

/// What an invoice is *for*.
@JsonEnum(fieldRename: FieldRename.snake)
enum InvoiceType { monthly, advance, oneTime, proration }

/// The typed line taxonomy. Discount, waiver and write-off are separate on
/// purpose: same arithmetic, three different facts.
@JsonEnum(fieldRename: FieldRename.snake)
enum InvoiceLineType {
  subscription,
  installation,
  equipment,
  adjustment,
  discount,
  waiver,
  writeOff,
  lateFee,
  other,
}
