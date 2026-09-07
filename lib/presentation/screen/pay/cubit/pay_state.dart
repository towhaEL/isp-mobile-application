part of 'pay_cubit.dart';

@freezed
sealed class PayState with _$PayState {
  const factory PayState({
    @Default(BaseStatus.initial()) BaseStatus status,
    @Default(BaseStatus.initial()) BaseStatus payStatus,
    @Default(<PaymentMethodEntity>[]) List<PaymentMethodEntity> methods,
    String? selectedMethodId,
    PaymentReceiptEntity? receipt,
  }) = _PayState;

  const PayState._();

  /// The design groups the picker into wallets and cards; a bank mandate is
  /// autopay-only, so it does not appear in the one-off payment list.
  List<PaymentMethodEntity> get wallets =>
      methods.where((m) => m.kind == PaymentMethodKind.wallet).toList();

  List<PaymentMethodEntity> get cards =>
      methods.where((m) => m.kind == PaymentMethodKind.card).toList();

  PaymentMethodEntity? get selectedMethod => selectedMethodId == null
      ? null
      : methods.where((m) => m.id == selectedMethodId).firstOrNull;

  bool get canPay => selectedMethodId != null && !payStatus.isLoading;
}
