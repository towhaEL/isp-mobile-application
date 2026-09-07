part of 'plan_change_cubit.dart';

@freezed
sealed class PlanChangeState with _$PlanChangeState {
  const factory PlanChangeState({
    @Default(BaseStatus.initial()) BaseStatus status,
    @Default(BaseStatus.initial()) BaseStatus confirmStatus,
    PackageEntity? target,
    ProrationQuoteEntity? quote,
  }) = _PlanChangeState;

  const PlanChangeState._();

  bool get isReady => target != null && quote != null;

  bool get isConfirming => confirmStatus.isLoading;
}
