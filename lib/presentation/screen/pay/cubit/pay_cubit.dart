import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:isp_selfcare/core/error/response_error.dart';
import 'package:isp_selfcare/core/state_status/base_status.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';
import 'package:isp_selfcare/domain/use_cases/billing/get_payment_methods_use_case.dart';
import 'package:isp_selfcare/domain/use_cases/billing/pay_invoice_use_case.dart';
import 'package:logger/logger.dart';

part 'pay_cubit.freezed.dart';
part 'pay_state.dart';

/// Choosing how to pay, and paying.
@injectable
class PayCubit extends Cubit<PayState> {
  PayCubit(this._getPaymentMethods, this._payInvoice, this._logger)
    : super(const PayState());

  final GetPaymentMethodsUseCase _getPaymentMethods;
  final PayInvoiceUseCase _payInvoice;
  final Logger _logger;

  Future<void> load() async {
    emit(state.copyWith(status: const BaseStatus.loading()));
    try {
      emit(
        state.copyWith(
          status: const BaseStatus.success(),
          methods: await _getPaymentMethods.execute(),
        ),
      );
    } catch (e) {
      _logger.e(e);
      emit(state.copyWith(status: BaseStatus.failure(ResponseError.from(e))));
    }
  }

  void selectMethod(String methodId) =>
      emit(state.copyWith(selectedMethodId: methodId));

  /// Settles [invoiceId] with the chosen method and returns the receipt, or
  /// null if the payment failed. The caller routes to the receipt screen.
  Future<PaymentReceiptEntity?> pay({required int invoiceId}) async {
    final methodId = state.selectedMethodId;
    if (methodId == null) return null;

    emit(state.copyWith(payStatus: const BaseStatus.loading()));
    try {
      final receipt = await _payInvoice.execute((
        invoiceId: invoiceId,
        paymentMethodId: methodId,
      ));
      emit(
        state.copyWith(payStatus: const BaseStatus.success(), receipt: receipt),
      );
      return receipt;
    } catch (e) {
      _logger.e(e);
      emit(
        state.copyWith(payStatus: BaseStatus.failure(ResponseError.from(e))),
      );
      return null;
    }
  }
}
