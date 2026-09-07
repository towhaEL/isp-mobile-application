import 'package:flutter/material.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';
import 'package:isp_selfcare/domain/enum/connection_status.dart';
import 'package:isp_selfcare/l10n/l10n.dart';
import 'package:isp_selfcare/presentation/theme/base/app_palette.dart';

/// How a line's health reads to the customer.
///
/// The backend's `ConnectionStatus` is not the whole story: a line can be
/// `active` and still be in trouble because its bill lapsed three days ago.
/// The design shows three states — active, grace period, suspended — and
/// derives the middle one from the bill rather than the connection row, which
/// is the honest reading and the one that decides whether to shout at the
/// customer.
enum ConnectionHealth { active, gracePeriod, suspended }

extension ConnectionHealthView on ConnectionHealth {
  String label(AppLocalizations l10n) => switch (this) {
    ConnectionHealth.active => l10n.active,
    ConnectionHealth.gracePeriod => l10n.gracePeriod,
    ConnectionHealth.suspended => l10n.suspended,
  };

  /// The sentence under the amount due on the home screen.
  String note(AppLocalizations l10n) => switch (this) {
    ConnectionHealth.active => l10n.paidThroughThisCycleNothing,
    ConnectionHealth.gracePeriod => l10n.billOverdueServiceStaysOn,
    ConnectionHealth.suspended => l10n.connectionSuspendedPayNowTo,
  };

  /// Tag fill. Suspended inverts to the darkest step so it cannot be mistaken
  /// for the other two at a glance.
  Color background(AppPalette palette) => switch (this) {
    ConnectionHealth.active => palette.accentRamp[200],
    ConnectionHealth.gracePeriod => palette.neutralRamp[300],
    ConnectionHealth.suspended => palette.accentRamp[900],
  };

  Color foreground(AppPalette palette) => switch (this) {
    ConnectionHealth.active => palette.accentRamp[900],
    ConnectionHealth.gracePeriod => palette.neutralRamp[900],
    ConnectionHealth.suspended => palette.onAccentSurface,
  };

  /// Ink for the small status caption in the all-connections list.
  Color captionInk(AppPalette palette) => this == ConnectionHealth.active
      ? palette.accentRamp[700]
      : palette.neutralRamp[700];
}

/// Derives the health of [connection] from its status and its bills.
ConnectionHealth healthOf(
  ConnectionEntity connection,
  List<InvoiceEntity> invoices,
) {
  if (connection.status == ConnectionStatus.suspended ||
      connection.status == ConnectionStatus.terminated) {
    return ConnectionHealth.suspended;
  }
  final hasOverdue = invoices.any(
    (i) => i.connectionId == connection.id && i.isOverdue,
  );
  return hasOverdue ? ConnectionHealth.gracePeriod : ConnectionHealth.active;
}
