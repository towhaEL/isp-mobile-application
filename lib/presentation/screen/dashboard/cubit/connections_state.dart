part of 'connections_cubit.dart';

@freezed
sealed class ConnectionsState with _$ConnectionsState {
  const factory ConnectionsState({
    @Default(BaseStatus.initial()) BaseStatus status,
    @Default(<ConnectionEntity>[]) List<ConnectionEntity> connections,
    @Default(<InvoiceEntity>[]) List<InvoiceEntity> invoices,
    @Default(0) int selectedIndex,

    /// Whether the header's line switcher is expanded.
    @Default(false) bool isSwitcherOpen,
    CustomerEntity? customer,
    AccountSummaryEntity? summary,
  }) = _ConnectionsState;

  const ConnectionsState._();

  /// The line every screen is currently scoped to, or null before the first
  /// load completes.
  ConnectionEntity? get selected =>
      selectedIndex >= 0 && selectedIndex < connections.length
      ? connections[selectedIndex]
      : null;

  bool get hasConnections => connections.isNotEmpty;

  /// Outstanding invoices for one line, newest first.
  List<InvoiceEntity> invoicesFor(int connectionId) => invoices
      .where((i) => i.connectionId == connectionId)
      .toList(growable: false);

  /// What one line owes right now — the number under its name on the home
  /// screen and the amount its "Pay this line" button settles.
  double dueFor(int connectionId) => invoices
      .where((i) => i.connectionId == connectionId && i.status.isCollectable)
      .fold<double>(0, (sum, i) => sum + i.dueAmount);

  /// The oldest unsettled invoice for a line: the one a payment should clear
  /// first, and the one whose due date the UI shows.
  InvoiceEntity? nextPayableFor(int connectionId) {
    final open =
        invoices
            .where(
              (i) => i.connectionId == connectionId && i.status.isCollectable,
            )
            .toList()
          ..sort((a, b) => a.dueDate.compareTo(b.dueDate));
    return open.firstOrNull;
  }

  double get totalDue => invoices
      .where((i) => i.status.isCollectable)
      .fold<double>(0, (sum, i) => sum + i.dueAmount);

  /// How many lines need the customer to do something — the design's
  /// "Needs action" tile.
  int get needsActionCount => connections
      .where(
        (c) =>
            c.status == ConnectionStatus.suspended ||
            invoices.any((i) => i.connectionId == c.id && i.isOverdue),
      )
      .length;
}
