import 'package:isp_selfcare/data/models/response_model/base/base_response.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';

extension PackageResponseListMapper on List<PackageResponseModel> {
  List<PackageEntity> toPackageEntities() =>
      map((package) => package.toPackageEntity()).toList();
}

extension PackageResponseMapper on PackageResponseModel {
  PackageEntity toPackageEntity() => PackageEntity(
    id: id ?? 0,
    name: name ?? '',
    code: code ?? '',
    downloadKbps: downloadKbps ?? 0,
    uploadKbps: uploadKbps ?? 0,
    price: price ?? 0,
    // The backend defaults new packages to BDT; keep the same fallback so an
    // omitted field never renders as a blank currency.
    currency: currency ?? 'BDT',
    validityDays: validityDays ?? 30,
    isActive: isActive ?? true,
    description: description,
  );
}
