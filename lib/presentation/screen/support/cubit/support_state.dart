part of 'support_cubit.dart';

@freezed
sealed class SupportState with _$SupportState {
  const factory SupportState({
    @Default(BaseStatus.initial()) BaseStatus status,
    @Default(<SupportContactEntity>[]) List<SupportContactEntity> contacts,
    @Default(<TicketEntity>[]) List<TicketEntity> tickets,
    LineCheckEntity? lineCheck,
  }) = _SupportState;

  const SupportState._();

  bool get hasTickets => tickets.isNotEmpty;
}
