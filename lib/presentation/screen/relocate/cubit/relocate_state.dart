part of 'relocate_cubit.dart';

@freezed
sealed class RelocateState with _$RelocateState {
  const factory RelocateState({
    @Default(BaseStatus.initial()) BaseStatus status,
    @Default(BaseStatus.initial()) BaseStatus submitStatus,
    @Default(<ServiceAreaEntity>[]) List<ServiceAreaEntity> areas,
    @Default('') String address,
    @Default('') String preferredDate,
    @Default(false) bool isSubmitted,
    String? selectedAreaId,
  }) = _RelocateState;

  const RelocateState._();

  ServiceAreaEntity? get selectedArea => selectedAreaId == null
      ? null
      : areas.where((a) => a.id == selectedAreaId).firstOrNull;

  /// The design gates on the area alone. An address outside coverage is still
  /// worth submitting — it becomes a survey request rather than a move.
  bool get canSubmit => selectedAreaId != null && !submitStatus.isLoading;
}
