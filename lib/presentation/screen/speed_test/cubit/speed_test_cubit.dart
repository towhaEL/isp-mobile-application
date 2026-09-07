import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:isp_selfcare/core/error/response_error.dart';
import 'package:isp_selfcare/core/state_status/base_status.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';
import 'package:isp_selfcare/domain/use_cases/network/run_speed_test_use_case.dart';
import 'package:logger/logger.dart';

part 'speed_test_cubit.freezed.dart';
part 'speed_test_state.dart';

/// Runs a throughput test and animates its progress.
///
/// The bar is driven by a local ticker rather than by real progress events:
/// the measurement is a single call that returns when it is done, and a bar
/// that sat at zero and then jumped to full would read as a freeze. The ticker
/// stops as soon as the real result lands, so it can never claim to be
/// finished before the number is.
@injectable
class SpeedTestCubit extends Cubit<SpeedTestState> {
  SpeedTestCubit(this._runSpeedTest, this._logger)
    : super(const SpeedTestState());

  final RunSpeedTestUseCase _runSpeedTest;
  final Logger _logger;

  Timer? _ticker;

  /// Matches the design's 90ms / 7% cadence.
  static const _tickInterval = Duration(milliseconds: 90);
  static const _tickIncrement = 0.07;

  /// The ticker never fills the bar on its own — the result does.
  static const _tickCeiling = 0.95;

  Future<void> run({required int connectionId}) async {
    if (state.isRunning) return;

    emit(
      state.copyWith(
        status: const BaseStatus.loading(),
        progress: 0,
        result: null,
      ),
    );

    _ticker?.cancel();
    _ticker = Timer.periodic(_tickInterval, (_) {
      final next = state.progress + _tickIncrement;
      emit(state.copyWith(progress: next > _tickCeiling ? _tickCeiling : next));
    });

    try {
      final result = await _runSpeedTest.execute(connectionId);
      _ticker?.cancel();
      emit(
        state.copyWith(
          status: const BaseStatus.success(),
          progress: 1,
          result: result,
        ),
      );
    } catch (e) {
      _ticker?.cancel();
      _logger.e(e);
      emit(
        state.copyWith(
          status: BaseStatus.failure(ResponseError.from(e)),
          progress: 0,
        ),
      );
    }
  }

  @override
  Future<void> close() {
    _ticker?.cancel();
    return super.close();
  }
}
