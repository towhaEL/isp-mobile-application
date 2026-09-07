import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:isp_selfcare/core/error/response_error.dart';
import 'package:isp_selfcare/core/state_status/base_status.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';
import 'package:isp_selfcare/domain/use_cases/network/get_usage_use_case.dart';
import 'package:logger/logger.dart';

part 'usage_cubit.freezed.dart';
part 'usage_state.dart';

/// Bandwidth history for one line over a chosen window.
@injectable
class UsageCubit extends Cubit<UsageState> {
  UsageCubit(this._getUsage, this._logger) : super(const UsageState());

  final GetUsageUseCase _getUsage;
  final Logger _logger;

  Future<void> load({required int connectionId, UsageRange? range}) async {
    final target = range ?? state.range;
    emit(state.copyWith(status: const BaseStatus.loading(), range: target));
    try {
      emit(
        state.copyWith(
          status: const BaseStatus.success(),
          summary: await _getUsage.execute((
            connectionId: connectionId,
            range: target,
          )),
        ),
      );
    } catch (e) {
      _logger.e(e);
      emit(state.copyWith(status: BaseStatus.failure(ResponseError.from(e))));
    }
  }

  Future<void> selectRange(int connectionId, UsageRange range) =>
      load(connectionId: connectionId, range: range);
}
