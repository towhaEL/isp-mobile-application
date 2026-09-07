part of '../base/base_response.dart';

@freezed
abstract class RedeemOptionResponseModel with _$RedeemOptionResponseModel {
  const factory RedeemOptionResponseModel({
    String? id,
    String? title,
    int? cost,
  }) = _RedeemOptionResponseModel;

  factory RedeemOptionResponseModel.fromJson(Map<String, dynamic> json) =>
      _$RedeemOptionResponseModelFromJson(json);
}

@freezed
abstract class RewardLedgerResponseModel with _$RewardLedgerResponseModel {
  const factory RewardLedgerResponseModel({
    String? id,
    String? description,
    DateTime? occurredAt,
    int? delta,
  }) = _RewardLedgerResponseModel;

  factory RewardLedgerResponseModel.fromJson(Map<String, dynamic> json) =>
      _$RewardLedgerResponseModelFromJson(json);
}

@freezed
abstract class RewardsResponseModel with _$RewardsResponseModel {
  const factory RewardsResponseModel({
    int? points,
    int? pointsPerCurrencyUnit,
    @Default(<RedeemOptionResponseModel>[])
    List<RedeemOptionResponseModel> options,
    @Default(<RewardLedgerResponseModel>[])
    List<RewardLedgerResponseModel> ledger,
  }) = _RewardsResponseModel;

  factory RewardsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$RewardsResponseModelFromJson(json);
}

@freezed
abstract class ReferralInviteResponseModel with _$ReferralInviteResponseModel {
  const factory ReferralInviteResponseModel({
    String? id,
    String? name,
    ReferralInviteStatus? status,
    String? progressLabel,
  }) = _ReferralInviteResponseModel;

  factory ReferralInviteResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ReferralInviteResponseModelFromJson(json);
}

@freezed
abstract class ReferralResponseModel with _$ReferralResponseModel {
  const factory ReferralResponseModel({
    String? code,
    int? invitesUsed,
    int? pointsEarned,
    @Default(<ReferralInviteResponseModel>[])
    List<ReferralInviteResponseModel> invites,
  }) = _ReferralResponseModel;

  factory ReferralResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ReferralResponseModelFromJson(json);
}
