part of '../base/base_entity.dart';

/// The signed-in customer. [code] is the human-quotable account number staff
/// ask for on the phone, which is why it is required alongside the surrogate
/// [id].
@freezed
abstract class CustomerEntity with _$CustomerEntity {
  const factory CustomerEntity({
    required int id,
    required String code,
    required String fullName,
    required String phone,
    String? alternatePhone,
    String? email,
    String? nationalId,
    DateTime? createdAt,
  }) = _CustomerEntity;

  const CustomerEntity._();

  /// Initials for an avatar placeholder, e.g. "Towhid Islam" -> "TI".
  String get initials {
    final parts = fullName.trim().split(RegExp(r'\s+'))
      ..removeWhere((p) => p.isEmpty);
    if (parts.isEmpty) return '?';
    if (parts.length == 1) return parts.first.substring(0, 1).toUpperCase();
    return (parts.first.substring(0, 1) + parts.last.substring(0, 1))
        .toUpperCase();
  }
}
