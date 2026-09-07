part of 'autopay_cubit.dart';

@freezed
sealed class AutopayState with _$AutopayState {
  const factory AutopayState({
    @Default(BaseStatus.initial()) BaseStatus status,
    @Default(BaseStatus.initial()) BaseStatus saveStatus,
    @Default(<PaymentMethodEntity>[]) List<PaymentMethodEntity> methods,

    /// What the server holds.
    AutopayConfigEntity? config,

    /// What the form holds.
    AutopayConfigEntity? draft,

    /// Whether the confirmation panel should be showing instead of the form.
    @Default(false) bool isSaved,
  }) = _AutopayState;

  const AutopayState._();

  bool get isEnabled => draft?.enabled ?? false;

  /// A mandate needs something to charge and at least one line to charge for.
  bool get canSave =>
      isEnabled &&
      draft?.source != null &&
      (draft?.connectionIds.isNotEmpty ?? false) &&
      !saveStatus.isLoading;

  bool isConnectionSelected(int id) =>
      draft?.connectionIds.contains(id) ?? false;
}
