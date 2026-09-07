import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:isp_selfcare/core/error/response_error.dart';
import 'package:isp_selfcare/core/state_status/base_status.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';
import 'package:isp_selfcare/domain/use_cases/account/get_service_areas_use_case.dart';
import 'package:isp_selfcare/domain/use_cases/account/request_relocation_use_case.dart';
import 'package:logger/logger.dart';

part 'relocate_cubit.freezed.dart';
part 'relocate_state.dart';

/// Asking for an existing line to be moved to a new address.
@injectable
class RelocateCubit extends Cubit<RelocateState> {
  RelocateCubit(this._getServiceAreas, this._requestRelocation, this._logger)
    : super(const RelocateState());

  final GetServiceAreasUseCase _getServiceAreas;
  final RequestRelocationUseCase _requestRelocation;
  final Logger _logger;

  Future<void> load() async {
    emit(state.copyWith(status: const BaseStatus.loading()));
    try {
      emit(
        state.copyWith(
          status: const BaseStatus.success(),
          areas: await _getServiceAreas.execute(),
        ),
      );
    } catch (e) {
      _logger.e(e);
      emit(state.copyWith(status: BaseStatus.failure(ResponseError.from(e))));
    }
  }

  void selectArea(ServiceAreaEntity area) =>
      emit(state.copyWith(selectedAreaId: area.id));

  void setAddress(String value) => emit(state.copyWith(address: value));

  void setPreferredDate(String value) =>
      emit(state.copyWith(preferredDate: value));

  Future<void> submit({required int connectionId}) async {
    final areaId = state.selectedAreaId;
    if (areaId == null) return;

    emit(state.copyWith(submitStatus: const BaseStatus.loading()));
    try {
      await _requestRelocation.execute((
        connectionId: connectionId,
        areaId: areaId,
        address: state.address,
        preferredDate: state.preferredDate,
      ));
      emit(
        state.copyWith(
          submitStatus: const BaseStatus.success(),
          isSubmitted: true,
        ),
      );
    } catch (e) {
      _logger.e(e);
      emit(
        state.copyWith(submitStatus: BaseStatus.failure(ResponseError.from(e))),
      );
    }
  }
}
