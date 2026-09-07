import 'package:isp_selfcare/data/models/response_model/base/base_response.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';

extension CustomerResponseMapper on CustomerResponseModel {
  CustomerEntity toCustomerEntity() => CustomerEntity(
    id: id ?? 0,
    code: code ?? '',
    fullName: fullName ?? '',
    phone: phone ?? '',
    alternatePhone: alternatePhone,
    email: email,
    nationalId: nationalId,
    createdAt: createdAt,
  );
}
