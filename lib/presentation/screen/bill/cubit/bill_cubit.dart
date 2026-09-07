import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:isp_selfcare/core/error/response_error.dart';
import 'package:isp_selfcare/core/state_status/base_status.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';
import 'package:isp_selfcare/domain/use_cases/billing/get_autopay_use_case.dart';
import 'package:isp_selfcare/domain/use_cases/billing/get_payments_use_case.dart';
import 'package:logger/logger.dart';

part 'bill_cubit.freezed.dart';
part 'bill_state.dart';

/// The bill screen's own data: what has been paid before, and whether autopay
/// is set up. The amount currently owed comes from `ConnectionsCubit`, which
/// already holds the invoices for every line.
@injectable
class BillCubit extends Cubit<BillState> {
  BillCubit(this._getPayments, this._getAutopay, this._logger)
    : super(const BillState());

  final GetPaymentsUseCase _getPayments;
  final GetAutopayUseCase _getAutopay;
  final Logger _logger;

  Future<void> load({int? connectionId}) async {
    emit(state.copyWith(status: const BaseStatus.loading()));
    try {
      final results = await Future.wait([
        _getPayments.execute(connectionId),
        _getAutopay.execute(),
      ]);
      emit(
        state.copyWith(
          status: const BaseStatus.success(),
          payments: results[0] as List<PaymentEntity>,
          autopay: results[1] as AutopayConfigEntity,
        ),
      );
    } catch (e) {
      _logger.e(e);
      emit(state.copyWith(status: BaseStatus.failure(ResponseError.from(e))));
    }
  }
}
