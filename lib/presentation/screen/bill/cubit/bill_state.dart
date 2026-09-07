part of 'bill_cubit.dart';

@freezed
sealed class BillState with _$BillState {
  const factory BillState({
    @Default(BaseStatus.initial()) BaseStatus status,
    @Default(<PaymentEntity>[]) List<PaymentEntity> payments,
    AutopayConfigEntity? autopay,
  }) = _BillState;

  const BillState._();

  bool get isAutopayActive => autopay?.isActive ?? false;
}
