import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:isp_selfcare/core/error/response_error.dart';
import 'package:isp_selfcare/core/state_status/base_status.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';
import 'package:isp_selfcare/domain/use_cases/package/change_package_use_case.dart';
import 'package:isp_selfcare/domain/use_cases/package/get_packages_use_case.dart';
import 'package:isp_selfcare/domain/use_cases/package/get_proration_quote_use_case.dart';
import 'package:logger/logger.dart';

part 'plan_change_cubit.freezed.dart';
part 'plan_change_state.dart';

/// Pricing and confirming a mid-cycle plan change.
@injectable
class PlanChangeCubit extends Cubit<PlanChangeState> {
  PlanChangeCubit(
    this._getPackages,
    this._getQuote,
    this._changePackage,
    this._logger,
  ) : super(const PlanChangeState());

  final GetPackagesUseCase _getPackages;
  final GetProrationQuoteUseCase _getQuote;
  final ChangePackageUseCase _changePackage;
  final Logger _logger;

  Future<void> load({required int connectionId, required int packageId}) async {
    emit(state.copyWith(status: const BaseStatus.loading()));
    try {
      final packages = await _getPackages.execute();
      final quote = await _getQuote.execute((
        connectionId: connectionId,
        packageId: packageId,
      ));
      emit(
        state.copyWith(
          status: const BaseStatus.success(),
          target: packages.where((p) => p.id == packageId).firstOrNull,
          quote: quote,
        ),
      );
    } catch (e) {
      _logger.e(e);
      emit(state.copyWith(status: BaseStatus.failure(ResponseError.from(e))));
    }
  }

  /// Returns true once the change is queued, so the caller can route on.
  Future<bool> confirm({
    required int connectionId,
    required int packageId,
  }) async {
    emit(state.copyWith(confirmStatus: const BaseStatus.loading()));
    try {
      await _changePackage.execute((
        connectionId: connectionId,
        packageId: packageId,
      ));
      emit(state.copyWith(confirmStatus: const BaseStatus.success()));
      return true;
    } catch (e) {
      _logger.e(e);
      emit(
        state.copyWith(
          confirmStatus: BaseStatus.failure(ResponseError.from(e)),
        ),
      );
      return false;
    }
  }
}
