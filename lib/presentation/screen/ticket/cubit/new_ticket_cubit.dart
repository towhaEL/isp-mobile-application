import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:isp_selfcare/core/error/response_error.dart';
import 'package:isp_selfcare/core/state_status/base_status.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';
import 'package:isp_selfcare/domain/use_cases/support/create_ticket_use_case.dart';
import 'package:logger/logger.dart';

part 'new_ticket_cubit.freezed.dart';
part 'new_ticket_state.dart';

/// Raising a fault report.
@injectable
class NewTicketCubit extends Cubit<NewTicketState> {
  NewTicketCubit(this._createTicket, this._logger)
    : super(const NewTicketState());

  final CreateTicketUseCase _createTicket;
  final Logger _logger;

  void selectIssue(TicketIssueType issue) => emit(state.copyWith(issue: issue));

  void setDescription(String value) => emit(state.copyWith(description: value));

  void setPreferredTime(String value) =>
      emit(state.copyWith(preferredVisitTime: value));

  Future<void> submit({required int connectionId}) async {
    final issue = state.issue;
    if (issue == null) return;

    emit(state.copyWith(status: const BaseStatus.loading()));
    try {
      final ticket = await _createTicket.execute((
        connectionId: connectionId,
        issueType: issue,
        description: state.description,
        preferredVisitTime: state.preferredVisitTime.isEmpty
            ? null
            : state.preferredVisitTime,
      ));
      emit(
        state.copyWith(
          status: const BaseStatus.success(),
          createdTicket: ticket,
        ),
      );
    } catch (e) {
      _logger.e(e);
      emit(state.copyWith(status: BaseStatus.failure(ResponseError.from(e))));
    }
  }
}
