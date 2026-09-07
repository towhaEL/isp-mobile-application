part of 'offers_cubit.dart';

@freezed
sealed class OffersState with _$OffersState {
  const factory OffersState({
    @Default(BaseStatus.initial()) BaseStatus status,
    @Default(<OfferEntity>[]) List<OfferEntity> offers,
  }) = _OffersState;

  const OffersState._();

  bool get isEmpty => status.isSuccess && offers.isEmpty;
}
