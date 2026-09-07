import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:isp_selfcare/core/error/response_error.dart';
import 'package:isp_selfcare/core/state_status/base_status.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';
import 'package:isp_selfcare/domain/use_cases/account/get_rewards_use_case.dart';
import 'package:isp_selfcare/domain/use_cases/account/redeem_reward_use_case.dart';
import 'package:logger/logger.dart';

part 'rewards_cubit.freezed.dart';
part 'rewards_state.dart';

/// The loyalty balance.
///
/// A singleton because two places show it at once — the rewards screen and the
/// drawer's shortcut tile — and they must not disagree after a redemption.
@singleton
class RewardsCubit extends Cubit<RewardsState> {
  RewardsCubit(this._getRewards, this._redeemReward, this._logger)
    : super(const RewardsState());

  final GetRewardsUseCase _getRewards;
  final RedeemRewardUseCase _redeemReward;
  final Logger _logger;

  Future<void> load() async {
    emit(state.copyWith(status: const BaseStatus.loading()));
    try {
      emit(
        state.copyWith(
          status: const BaseStatus.success(),
          rewards: await _getRewards.execute(),
        ),
      );
    } catch (e) {
      _logger.e(e);
      emit(state.copyWith(status: BaseStatus.failure(ResponseError.from(e))));
    }
  }

  void select(String optionId) => emit(
    // Tapping the chosen reward again clears it, so the customer can back out
    // without leaving the screen.
    state.copyWith(
      selectedOptionId: state.selectedOptionId == optionId ? null : optionId,
    ),
  );

  /// Spends the selected reward. Returns its title on success so the caller can
  /// name it in the confirmation toast.
  Future<String?> redeemSelected() async {
    final option = state.selectedOption;
    if (option == null) return null;

    emit(state.copyWith(redeemStatus: const BaseStatus.loading()));
    try {
      final rewards = await _redeemReward.execute(option.id);
      emit(
        state.copyWith(
          redeemStatus: const BaseStatus.success(),
          rewards: rewards,
          selectedOptionId: null,
        ),
      );
      return option.title;
    } catch (e) {
      _logger.e(e);
      emit(
        state.copyWith(redeemStatus: BaseStatus.failure(ResponseError.from(e))),
      );
      return null;
    }
  }
}
