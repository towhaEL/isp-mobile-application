import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:isp_selfcare/core/error/response_error.dart';
import 'package:isp_selfcare/core/state_status/base_status.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';
import 'package:isp_selfcare/domain/use_cases/package/get_packages_use_case.dart';
import 'package:logger/logger.dart';

part 'packages_cubit.freezed.dart';
part 'packages_state.dart';

/// The plan catalogue, and which of the two tabs is showing.
@injectable
class PackagesCubit extends Cubit<PackagesState> {
  PackagesCubit(this._getPackages, this._logger) : super(const PackagesState());

  final GetPackagesUseCase _getPackages;
  final Logger _logger;

  Future<void> load() async {
    emit(state.copyWith(status: const BaseStatus.loading()));
    try {
      emit(
        state.copyWith(
          status: const BaseStatus.success(),
          // Only plans still on sale can be switched to; a retired plan the
          // customer happens to be on is shown by the "Current" tab instead.
          packages: (await _getPackages.execute())
              .where((p) => p.isActive)
              .toList(),
        ),
      );
    } catch (e) {
      _logger.e(e);
      emit(state.copyWith(status: BaseStatus.failure(ResponseError.from(e))));
    }
  }

  void showAll() => emit(state.copyWith(tab: PackagesTab.all));

  void showCurrent() => emit(state.copyWith(tab: PackagesTab.current));
}
