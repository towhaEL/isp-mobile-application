part of 'new_ticket_cubit.dart';

@freezed
sealed class NewTicketState with _$NewTicketState {
  const factory NewTicketState({
    @Default(BaseStatus.initial()) BaseStatus status,
    @Default('') String description,
    @Default('') String preferredVisitTime,
    TicketIssueType? issue,
    TicketEntity? createdTicket,
  }) = _NewTicketState;

  const NewTicketState._();

  /// The design gates the submit button on the category alone — the free-text
  /// box helps, but a customer who cannot describe the fault should still be
  /// able to report it.
  bool get canSubmit => issue != null && !status.isLoading;

  bool get isSubmitted => status.isSuccess && createdTicket != null;
}
