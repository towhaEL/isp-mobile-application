import 'package:isp_selfcare/data/models/response_model/base/base_response.dart';
import 'package:isp_selfcare/data/remapper/package_response_to_entity.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';
import 'package:isp_selfcare/domain/enum/billing_enums.dart';
import 'package:isp_selfcare/domain/enum/connection_status.dart';

extension ConnectionResponseListMapper on List<ConnectionResponseModel> {
  List<ConnectionEntity> toConnectionEntities() =>
      map((connection) => connection.toConnectionEntity()).toList();
}

extension ConnectionResponseMapper on ConnectionResponseModel {
  ConnectionEntity toConnectionEntity() {
    final packageEntity = package?.toPackageEntity();
    return ConnectionEntity(
      id: id ?? 0,
      code: code ?? '',
      username: username ?? '',
      // An unknown status must not read as `active` — a line the app wrongly
      // shows as online is worse than one it admits it cannot describe.
      status: status ?? ConnectionStatus.pending,
      billingType: billingType ?? BillingType.prepaid,
      connectivityType: connectivityType ?? ConnectivityType.shared,
      clientType: clientType ?? ClientType.home,
      packageId: packageId ?? packageEntity?.id ?? 0,
      title: title,
      packageName: packageEntity?.name,
      package: packageEntity,
      connectionDate: connectionDate,
      expiresAt: expiresAt,
      macAddress: macAddress,
      distributionPoint: distributionPoint,
      addressLine: addressLine,
    );
  }
}
