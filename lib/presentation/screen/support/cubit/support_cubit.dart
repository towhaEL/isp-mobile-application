import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:isp_selfcare/core/error/response_error.dart';
import 'package:isp_selfcare/core/state_status/base_status.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';
import 'package:isp_selfcare/domain/use_cases/support/get_line_check_use_case.dart';
import 'package:isp_selfcare/domain/use_cases/support/get_support_contacts_use_case.dart';
import 'package:isp_selfcare/domain/use_cases/support/get_tickets_use_case.dart';
import 'package:logger/logger.dart';

part 'support_cubit.freezed.dart';
part 'support_state.dart';

/// The support desk: an automated line check, the ways to reach a human, and
/// the customer's open tickets.
@injectable
class SupportCubit extends Cubit<SupportState> {
  SupportCubit(
    this._getLineCheck,
    this._getContacts,
    this._getTickets,
    this._logger,
  ) : super(const SupportState());

  final GetLineCheckUseCase _getLineCheck;
  final GetSupportContactsUseCase _getContacts;
  final GetTicketsUseCase _getTickets;
  final Logger _logger;

  Future<void> load({required int connectionId}) async {
    emit(state.copyWith(status: const BaseStatus.loading()));
    try {
      final results = await Future.wait([
        _getLineCheck.execute(connectionId),
        _getContacts.execute(),
        _getTickets.execute(),
      ]);
      emit(
        state.copyWith(
          status: const BaseStatus.success(),
          lineCheck: results[0] as LineCheckEntity,
          contacts: results[1] as List<SupportContactEntity>,
          tickets: results[2] as List<TicketEntity>,
        ),
      );
    } catch (e) {
      _logger.e(e);
      emit(state.copyWith(status: BaseStatus.failure(ResponseError.from(e))));
    }
  }

  /// Re-runs only the line check, leaving the tickets and contacts alone.
  Future<void> rerunLineCheck({required int connectionId}) async {
    try {
      emit(
        state.copyWith(lineCheck: await _getLineCheck.execute(connectionId)),
      );
    } catch (e) {
      _logger.e(e);
    }
  }
}
