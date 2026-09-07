import 'package:injectable/injectable.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';
import 'package:isp_selfcare/domain/repository/billing/billing_repository.dart';
import 'package:isp_selfcare/domain/use_cases/base/base_use_case.dart';

@singleton
class PayInvoiceUseCase
    with
        BaseUseCaseWithParams<
          PaymentReceiptEntity,
          ({int invoiceId, String paymentMethodId})
        > {
  PayInvoiceUseCase(this._billingRepository);

  final BillingRepository _billingRepository;

  @override
  Future<PaymentReceiptEntity> execute(
    ({int invoiceId, String paymentMethodId}) params,
  ) => _billingRepository.payInvoice(
    invoiceId: params.invoiceId,
    paymentMethodId: params.paymentMethodId,
  );
}
