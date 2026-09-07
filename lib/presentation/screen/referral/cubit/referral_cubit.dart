import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:isp_selfcare/core/error/response_error.dart';
import 'package:isp_selfcare/core/state_status/base_status.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';
import 'package:isp_selfcare/domain/use_cases/account/get_referral_use_case.dart';
import 'package:logger/logger.dart';

part 'referral_cubit.freezed.dart';
part 'referral_state.dart';

/// The customer's referral code and how their invitees are progressing.
@injectable
class ReferralCubit extends Cubit<ReferralState> {
  ReferralCubit(this._getReferral, this._logger) : super(const ReferralState());

  final GetReferralUseCase _getReferral;
  final Logger _logger;

  Future<void> load() async {
    emit(state.copyWith(status: const BaseStatus.loading()));
    try {
      emit(
        state.copyWith(
          status: const BaseStatus.success(),
          referral: await _getReferral.execute(),
        ),
      );
    } catch (e) {
      _logger.e(e);
      emit(state.copyWith(status: BaseStatus.failure(ResponseError.from(e))));
    }
  }

  /// Latches once the code has been copied, so the button can confirm it.
  void markCopied() => emit(state.copyWith(hasCopied: true));
}
