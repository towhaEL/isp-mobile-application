part of 'ticket_thread_cubit.dart';

@freezed
sealed class TicketThreadState with _$TicketThreadState {
  const factory TicketThreadState({
    @Default(BaseStatus.initial()) BaseStatus status,
    @Default(BaseStatus.initial()) BaseStatus sendStatus,
    @Default(<TicketMessageEntity>[]) List<TicketMessageEntity> messages,
    @Default('') String draft,
  }) = _TicketThreadState;

  const TicketThreadState._();

  bool get canSend => draft.trim().isNotEmpty && !sendStatus.isLoading;
}
