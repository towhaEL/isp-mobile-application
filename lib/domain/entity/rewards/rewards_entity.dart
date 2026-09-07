part of '../base/base_entity.dart';

/// The loyalty balance plus everything needed to spend it.
@freezed
abstract class RewardsEntity with _$RewardsEntity {
  const factory RewardsEntity({
    required int points,

    /// How many points buy one unit of currency — 100 points = Tk 10 means a
    /// rate of 10. Carried from the server so a promotion can change it
    /// without an app release.
    @Default(10) int pointsPerCurrencyUnit,
    @Default(<RedeemOptionEntity>[]) List<RedeemOptionEntity> options,
    @Default(<RewardLedgerEntryEntity>[]) List<RewardLedgerEntryEntity> ledger,
  }) = _RewardsEntity;

  const RewardsEntity._();

  /// The balance expressed as money off the next bill.
  double get monetaryValue =>
      pointsPerCurrencyUnit == 0 ? 0 : points / pointsPerCurrencyUnit;

  bool canAfford(RedeemOptionEntity option) => points >= option.cost;
}

@freezed
abstract class RedeemOptionEntity with _$RedeemOptionEntity {
  const factory RedeemOptionEntity({
    required String id,
    required String title,
    required int cost,
  }) = _RedeemOptionEntity;
}

@freezed
abstract class RewardLedgerEntryEntity with _$RewardLedgerEntryEntity {
  const factory RewardLedgerEntryEntity({
    required String id,
    required String description,
    required DateTime occurredAt,

    /// Signed: positive for points earned, negative for points spent.
    required int delta,
  }) = _RewardLedgerEntryEntity;

  const RewardLedgerEntryEntity._();

  bool get isCredit => delta >= 0;
}

@JsonEnum(fieldRename: FieldRename.snake)
enum ReferralInviteStatus { inProgress, paidOut, expired }

/// The customer's referral code and how the people they invited are doing.
@freezed
abstract class ReferralEntity with _$ReferralEntity {
  const factory ReferralEntity({
    required String code,
    @Default(0) int invitesUsed,
    @Default(0) int pointsEarned,
    @Default(<ReferralInviteEntity>[]) List<ReferralInviteEntity> invites,
  }) = _ReferralEntity;
}

@freezed
abstract class ReferralInviteEntity with _$ReferralInviteEntity {
  const factory ReferralInviteEntity({
    required String id,
    required String name,
    required ReferralInviteStatus status,
    required String progressLabel,
  }) = _ReferralInviteEntity;
}
