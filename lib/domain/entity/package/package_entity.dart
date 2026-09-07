part of '../base/base_entity.dart';

/// A sellable plan. Speeds arrive as kbps from the backend; the UI wants
/// "20 Mbps", so the conversion lives here rather than in every widget.
@freezed
abstract class PackageEntity with _$PackageEntity {
  const factory PackageEntity({
    required int id,
    required String name,
    required String code,
    required int downloadKbps,
    required int uploadKbps,
    required double price,
    required String currency,
    required int validityDays,
    @Default(true) bool isActive,
    String? description,
  }) = _PackageEntity;

  const PackageEntity._();

  double get downloadMbps => downloadKbps / 1000;
  double get uploadMbps => uploadKbps / 1000;

  /// "20 / 10 Mbps" — the headline speed pair.
  String get speedLabel => '${_trim(downloadMbps)} / ${_trim(uploadMbps)} Mbps';

  static String _trim(double mbps) {
    // 20.0 reads better as "20"; 2.5 must keep its decimal.
    return mbps % 1 == 0 ? mbps.toStringAsFixed(0) : mbps.toStringAsFixed(1);
  }
}
