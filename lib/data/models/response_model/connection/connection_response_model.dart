part of '../base/base_response.dart';

@freezed
abstract class ConnectionResponseModel with _$ConnectionResponseModel {
  const factory ConnectionResponseModel({
    int? id,
    String? code,
    int? customerId,
    String? username,
    int? packageId,
    String? title,
    ConnectionStatus? status,
    BillingType? billingType,
    ConnectivityType? connectivityType,
    ClientType? clientType,
    String? distributionPoint,
    String? macAddress,
    String? addressLine,
    DateTime? connectionDate,
    DateTime? expiresAt,
    PackageResponseModel? package,
  }) = _ConnectionResponseModel;

  factory ConnectionResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ConnectionResponseModelFromJson(json);
}
