part of '../base/base_request.dart';

/// A customer-initiated plan change. The backend decides whether it takes
/// effect now or at the next billing boundary, and prices any proration.
@freezed
abstract class ChangePackageRequestModel with _$ChangePackageRequestModel {
  const factory ChangePackageRequestModel({required int packageId}) =
      _ChangePackageRequestModel;

  factory ChangePackageRequestModel.fromJson(Map<String, dynamic> json) =>
      _$ChangePackageRequestModelFromJson(json);
}
