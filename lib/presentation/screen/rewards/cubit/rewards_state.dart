part of 'rewards_cubit.dart';

@freezed
sealed class RewardsState with _$RewardsState {
  const factory RewardsState({
    @Default(BaseStatus.initial()) BaseStatus status,
    @Default(BaseStatus.initial()) BaseStatus redeemStatus,
    RewardsEntity? rewards,
    String? selectedOptionId,
  }) = _RewardsState;

  const RewardsState._();

  int? get points => rewards?.points;

  List<RedeemOptionEntity> get options =>
      rewards?.options ?? const <RedeemOptionEntity>[];

  List<RewardLedgerEntryEntity> get ledger =>
      rewards?.ledger ?? const <RewardLedgerEntryEntity>[];

  RedeemOptionEntity? get selectedOption => selectedOptionId == null
      ? null
      : options.where((o) => o.id == selectedOptionId).firstOrNull;

  /// Whether the customer has enough points for [option] — what greys out the
  /// rewards they cannot yet afford instead of letting them fail on submit.
  bool canAfford(RedeemOptionEntity option) =>
      rewards?.canAfford(option) ?? false;

  bool get canRedeem => selectedOption != null && !redeemStatus.isLoading;
}
