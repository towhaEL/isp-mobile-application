part of '../base/base_entity.dart';

/// One internet line belonging to the customer. A customer may hold several,
/// so nothing here assumes a singleton.
@freezed
abstract class ConnectionEntity with _$ConnectionEntity {
  const factory ConnectionEntity({
    required int id,
    required String code,
    required String username,
    required ConnectionStatus status,
    required BillingType billingType,
    required ConnectivityType connectivityType,
    required ClientType clientType,
    required int packageId,
    String? title,
    String? packageName,
    PackageEntity? package,
    DateTime? connectionDate,
    DateTime? expiresAt,
    String? macAddress,
    String? distributionPoint,
    String? addressLine,
  }) = _ConnectionEntity;

  const ConnectionEntity._();

  /// What to show when the line has no nickname.
  String get displayName => title?.trim().isNotEmpty ?? false ? title! : code;

  /// Days until the current term lapses; null when no expiry is known.
  /// Negative once the term has already lapsed.
  int? get daysUntilExpiry {
    final expiry = expiresAt;
    if (expiry == null) return null;
    final now = DateTime.now();
    final from = DateTime(now.year, now.month, now.day);
    final to = DateTime(expiry.year, expiry.month, expiry.day);
    return to.difference(from).inDays;
  }
}
