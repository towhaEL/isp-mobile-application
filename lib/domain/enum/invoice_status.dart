import 'package:freezed_annotation/freezed_annotation.dart';

/// Mirrors the billing backend's `InvoiceStatus`.
///
/// [partiallyPaid] is a first-class state, not a rounding of "pending": a
/// customer who paid most of a bill is neither settled nor untouched.
/// [voided] and [writtenOff] are both "we will not collect", kept apart because
/// one is a correction and the other is a loss.
@JsonEnum(fieldRename: FieldRename.snake)
enum InvoiceStatus {
  draft,
  pending,
  partiallyPaid,
  paid,
  overdue,

  /// `void` on the wire — renamed because `void` is a Dart keyword.
  @JsonValue('void')
  voided,
  writtenOff;

  /// Nothing further is owed, whatever the reason.
  bool get isSettled =>
      this == InvoiceStatus.paid ||
      this == InvoiceStatus.voided ||
      this == InvoiceStatus.writtenOff;

  /// Money is still expected — what the "pay now" surfaces key off.
  bool get isCollectable =>
      this == InvoiceStatus.pending ||
      this == InvoiceStatus.partiallyPaid ||
      this == InvoiceStatus.overdue;
}
