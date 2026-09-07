import 'package:injectable/injectable.dart';
import 'package:isp_selfcare/data/data_source/mock_data/selfcare_fixtures.dart';
import 'package:isp_selfcare/data/data_source/package/package_data_source.dart';
import 'package:isp_selfcare/data/models/request_model/base/base_request.dart';
import 'package:isp_selfcare/data/models/response_model/base/base_response.dart';

/// Offline plan catalogue and proration pricing.
@LazySingleton()
class PackageMockDataSource implements PackageDataSource {
  static const _latency = Duration(milliseconds: 320);

  /// The billing clock the design assumes when it prorates.
  static const _cycleDays = 30;

  Future<void> get _wait => Future<void>.delayed(_latency);

  @override
  Future<List<PackageResponseModel>> getPackages() async {
    await _wait;
    return SelfcareFixtures.packages;
  }

  @override
  Future<ProrationQuoteResponseModel> getProrationQuote({
    required int connectionId,
    required int packageId,
  }) async {
    await _wait;

    final connection = SelfcareFixtures.connections
        .where((c) => c.id == connectionId)
        .firstOrNull;
    final target = SelfcareFixtures.packages
        .where((p) => p.id == packageId)
        .firstOrNull;
    if (connection == null || target == null) {
      throw ArgumentError('Unknown connection or package');
    }
    final current = connection.package;
    if (current == null) {
      throw ArgumentError.value(
        connectionId,
        'connectionId',
        'Connection has no package to prorate from',
      );
    }

    // Mirrors the prototype's arithmetic: credit the unused days on the old
    // plan, charge the same days on the new one, and bill the difference.
    // Real proration is the backend's job — this exists so the screen has
    // something coherent to show offline.
    final daysLeft = _daysLeftInCycle(connection);
    final currentPrice = current.price ?? 0;
    final targetPrice = target.price ?? 0;
    final credit = (currentPrice * daysLeft / _cycleDays).roundToDouble();
    final newRemainder = (targetPrice * daysLeft / _cycleDays).roundToDouble();
    final dueToday = newRemainder - credit;

    return ProrationQuoteResponseModel(
      daysLeftInCycle: daysLeft,
      creditForUnusedDays: credit,
      newPlanRemainder: newRemainder,
      // A downgrade produces credit, not a negative bill; the backend would
      // carry that forward rather than charge a negative amount.
      dueToday: dueToday > 0 ? dueToday : 0,
      nextCycleAmount: targetPrice,
      currency: target.currency ?? 'BDT',
    );
  }

  @override
  Future<void> changePackage({
    required int connectionId,
    required ChangePackageRequestModel request,
  }) async {
    await _wait;
  }

  int _daysLeftInCycle(ConnectionResponseModel connection) {
    final expiry = connection.expiresAt;
    if (expiry == null) return _cycleDays;
    final now = DateTime.now();
    final days = DateTime(
      expiry.year,
      expiry.month,
      expiry.day,
    ).difference(DateTime(now.year, now.month, now.day)).inDays;
    return days.clamp(0, _cycleDays);
  }
}
