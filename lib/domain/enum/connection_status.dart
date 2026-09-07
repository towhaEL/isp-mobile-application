import 'package:freezed_annotation/freezed_annotation.dart';

/// Where a connection is in its life, mirroring the billing backend's
/// `ConnectionStatus`.
///
/// [suspended] is the walled garden: the session stays *up* but restricted, so
/// it is deliberately distinct from [terminated]. Collapsing the two is what
/// turns a collections prompt into a "your line is dead" message.
@JsonEnum(fieldRename: FieldRename.snake)
enum ConnectionStatus {
  /// Row created but provisioning never completed — visibly incomplete.
  pending,

  /// Provisioned and serving traffic.
  active,

  /// Restricted to the walled garden, usually for non-payment.
  suspended,

  /// Closed for good.
  terminated;

  bool get isOnline => this == ConnectionStatus.active;

  /// Whether the customer can still restore service by paying.
  bool get isRecoverable => this == ConnectionStatus.suspended;
}
