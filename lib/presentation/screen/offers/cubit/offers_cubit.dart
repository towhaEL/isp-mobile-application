import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:isp_selfcare/core/error/response_error.dart';
import 'package:isp_selfcare/core/state_status/base_status.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';
import 'package:isp_selfcare/domain/use_cases/account/get_offers_use_case.dart';
import 'package:logger/logger.dart';

part 'offers_cubit.freezed.dart';
part 'offers_state.dart';

/// Marketing campaigns the operator is running for this customer.
@injectable
class OffersCubit extends Cubit<OffersState> {
  OffersCubit(this._getOffers, this._logger) : super(const OffersState());

  final GetOffersUseCase _getOffers;
  final Logger _logger;

  Future<void> load() async {
    emit(state.copyWith(status: const BaseStatus.loading()));
    try {
      emit(
        state.copyWith(
          status: const BaseStatus.success(),
          offers: await _getOffers.execute(),
        ),
      );
    } catch (e) {
      _logger.e(e);
      emit(state.copyWith(status: BaseStatus.failure(ResponseError.from(e))));
    }
  }
}
