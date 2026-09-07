part of 'referral_cubit.dart';

@freezed
sealed class ReferralState with _$ReferralState {
  const factory ReferralState({
    @Default(BaseStatus.initial()) BaseStatus status,
    @Default(false) bool hasCopied,
    ReferralEntity? referral,
  }) = _ReferralState;

  const ReferralState._();

  List<ReferralInviteEntity> get invites =>
      referral?.invites ?? const <ReferralInviteEntity>[];

  bool get hasInvites => invites.isNotEmpty;
}
