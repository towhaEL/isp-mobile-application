import 'package:injectable/injectable.dart';
import 'package:isp_selfcare/data/data_source/base/factory/data_source_factory.dart';
import 'package:isp_selfcare/data/data_source/billing/billing_data_source.dart';
import 'package:isp_selfcare/data/models/request_model/base/base_request.dart';
import 'package:isp_selfcare/data/remapper/billing_response_to_entity.dart';
import 'package:isp_selfcare/data/remapper/invoice_response_to_entity.dart';
import 'package:isp_selfcare/data/remapper/selfcare_response_to_entity.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';
import 'package:isp_selfcare/domain/repository/billing/billing_repository.dart';

@Singleton(as: BillingRepository)
class BillingRepositoryImpl implements BillingRepository {
  BillingRepositoryImpl(DataSourceFactory factory)
    : _dataSource = factory.createBillingDataSource();

  final BillingDataSource _dataSource;

  @override
  Future<AccountSummaryEntity> getAccountSummary() async =>
      (await _dataSource.getAccountSummary()).toAccountSummaryEntity();

  @override
  Future<List<InvoiceEntity>> getInvoices({int? connectionId}) async =>
      (await _dataSource.getInvoices(
        connectionId: connectionId,
      )).toInvoiceEntities();

  @override
  Future<InvoiceEntity> getInvoice({required int invoiceId}) async =>
      (await _dataSource.getInvoice(invoiceId: invoiceId)).toInvoiceEntity();

  @override
  Future<List<PaymentEntity>> getPayments({int? connectionId}) async =>
      (await _dataSource.getPayments(
        connectionId: connectionId,
      )).toPaymentEntities();

  @override
  Future<List<PaymentMethodEntity>> getPaymentMethods() async =>
      (await _dataSource.getPaymentMethods()).toEntities();

  @override
  Future<PaymentReceiptEntity> payInvoice({
    required int invoiceId,
    required String paymentMethodId,
  }) async => (await _dataSource.payInvoice(
    invoiceId: invoiceId,
    paymentMethodId: paymentMethodId,
  )).toEntity();

  @override
  Future<AutopayConfigEntity> getAutopay() async =>
      (await _dataSource.getAutopay()).toEntity();

  @override
  Future<AutopayConfigEntity> saveAutopay(AutopayConfigEntity config) async {
    final response = await _dataSource.saveAutopay(
      AutopayRequestModel(
        enabled: config.enabled,
        timing: config.timing,
        connectionIds: config.connectionIds,
        paymentMethodId: config.source?.id,
      ),
    );
    return response.toEntity();
  }
}
