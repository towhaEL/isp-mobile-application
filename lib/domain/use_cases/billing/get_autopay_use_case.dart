import 'package:injectable/injectable.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';
import 'package:isp_selfcare/domain/repository/billing/billing_repository.dart';
import 'package:isp_selfcare/domain/use_cases/base/base_use_case.dart';

@singleton
class GetAutopayUseCase with BaseUseCase<AutopayConfigEntity> {
  GetAutopayUseCase(this._billingRepository);

  final BillingRepository _billingRepository;

  @override
  Future<AutopayConfigEntity> execute() => _billingRepository.getAutopay();
}
