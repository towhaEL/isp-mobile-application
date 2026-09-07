import 'package:injectable/injectable.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';
import 'package:isp_selfcare/domain/repository/billing/billing_repository.dart';
import 'package:isp_selfcare/domain/use_cases/base/base_use_case.dart';

@singleton
class GetInvoiceUseCase with BaseUseCaseWithParams<InvoiceEntity, int> {
  GetInvoiceUseCase(this._billingRepository);

  final BillingRepository _billingRepository;

  @override
  Future<InvoiceEntity> execute(int params) =>
      _billingRepository.getInvoice(invoiceId: params);
}
