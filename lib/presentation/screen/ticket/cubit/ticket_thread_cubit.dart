import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:isp_selfcare/core/error/response_error.dart';
import 'package:isp_selfcare/core/state_status/base_status.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';
import 'package:isp_selfcare/domain/use_cases/support/get_ticket_messages_use_case.dart';
import 'package:isp_selfcare/domain/use_cases/support/reply_to_ticket_use_case.dart';
import 'package:logger/logger.dart';

part 'ticket_thread_cubit.freezed.dart';
part 'ticket_thread_state.dart';

/// One ticket's conversation.
@injectable
class TicketThreadCubit extends Cubit<TicketThreadState> {
  TicketThreadCubit(this._getMessages, this._reply, this._logger)
    : super(const TicketThreadState());

  final GetTicketMessagesUseCase _getMessages;
  final ReplyToTicketUseCase _reply;
  final Logger _logger;

  Future<void> load({required String ticketId}) async {
    emit(state.copyWith(status: const BaseStatus.loading()));
    try {
      emit(
        state.copyWith(
          status: const BaseStatus.success(),
          messages: await _getMessages.execute(ticketId),
        ),
      );
    } catch (e) {
      _logger.e(e);
      emit(state.copyWith(status: BaseStatus.failure(ResponseError.from(e))));
    }
  }

  void setDraft(String value) => emit(state.copyWith(draft: value));

  Future<void> send({required String ticketId}) async {
    final body = state.draft.trim();
    if (body.isEmpty) return;

    // Clear the field immediately: the customer has pressed send, and leaving
    // their text sitting there invites a double post.
    emit(state.copyWith(draft: '', sendStatus: const BaseStatus.loading()));
    try {
      final message = await _reply.execute((ticketId: ticketId, body: body));
      emit(
        state.copyWith(
          sendStatus: const BaseStatus.success(),
          messages: [...state.messages, message],
        ),
      );
    } catch (e) {
      _logger.e(e);
      // Put the text back so it is not lost to a failed send.
      emit(
        state.copyWith(
          draft: body,
          sendStatus: BaseStatus.failure(ResponseError.from(e)),
        ),
      );
    }
  }
}
