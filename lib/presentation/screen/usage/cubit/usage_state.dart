part of 'usage_cubit.dart';

@freezed
sealed class UsageState with _$UsageState {
  const factory UsageState({
    @Default(BaseStatus.initial()) BaseStatus status,
    @Default(UsageRange.sevenDays) UsageRange range,
    UsageSummaryEntity? summary,
  }) = _UsageState;

  const UsageState._();

  List<UsageBucketEntity> get buckets =>
      summary?.buckets ?? const <UsageBucketEntity>[];

  /// The tallest stacked column, used to scale every bar. Falls back to 1 so a
  /// dataset of all zeroes divides safely instead of producing NaN heights.
  double get peak {
    final value = summary?.peakBucketGb ?? 0;
    return value > 0 ? value : 1;
  }
}
