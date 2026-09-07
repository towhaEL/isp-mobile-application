part of 'speed_test_cubit.dart';

@freezed
sealed class SpeedTestState with _$SpeedTestState {
  const factory SpeedTestState({
    @Default(BaseStatus.initial()) BaseStatus status,

    /// 0–1, driven by the ticker while a test is in flight.
    @Default(0.0) double progress,
    SpeedTestResultEntity? result,
  }) = _SpeedTestState;

  const SpeedTestState._();

  bool get isRunning => status.isLoading;

  bool get isDone => status.isSuccess && result != null;

  /// The headline number, or a dash until there is one.
  ///
  /// The prototype counts up to its answer while the bar fills, but it can
  /// only do that because the answer is hard-coded. A real test has no partial
  /// reading to show, and inventing one would put a number on screen the
  /// customer might quote back to support.
  String get headline => isDone ? result!.downloadMbps.toStringAsFixed(1) : '—';
}
