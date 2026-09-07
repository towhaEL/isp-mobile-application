import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:isp_selfcare/core/error/response_error.dart';
import 'package:isp_selfcare/core/state_status/base_status.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';
import 'package:isp_selfcare/domain/enum/connection_status.dart';
import 'package:isp_selfcare/domain/use_cases/account/get_connections_use_case.dart';
import 'package:isp_selfcare/domain/use_cases/account/get_profile_use_case.dart';
import 'package:isp_selfcare/domain/use_cases/billing/get_account_summary_use_case.dart';
import 'package:isp_selfcare/domain/use_cases/billing/get_invoices_use_case.dart';
import 'package:logger/logger.dart';

part 'connections_cubit.freezed.dart';
part 'connections_state.dart';

/// App-level state: who is signed in, which lines they hold, and which one the
/// rest of the app is currently talking about.
///
/// Almost every screen is scoped to "the selected connection" — the bill, the
/// Wi-Fi settings, the speed test, a new ticket. Hoisting that choice here
/// rather than passing a connection id down through routes is what lets the
/// header's line switcher change every screen at once, exactly as the design
/// does with its `connIdx`.
@singleton
class ConnectionsCubit extends Cubit<ConnectionsState> {
  ConnectionsCubit(
    this._getProfile,
    this._getConnections,
    this._getInvoices,
    this._getAccountSummary,
    this._logger,
  ) : super(const ConnectionsState());

  final GetProfileUseCase _getProfile;
  final GetConnectionsUseCase _getConnections;
  final GetInvoicesUseCase _getInvoices;
  final GetAccountSummaryUseCase _getAccountSummary;
  final Logger _logger;

  Future<void> load() async {
    emit(state.copyWith(status: const BaseStatus.loading()));
    try {
      // Fetched together because the home screen leads with all four at once —
      // the customer's name, their lines, what each owes and the portfolio
      // total. Loading them in sequence would show three separate spinners.
      final results = await Future.wait([
        _getProfile.execute(),
        _getConnections.execute(),
        _getInvoices.execute(null),
        _getAccountSummary.execute(),
      ]);

      emit(
        state.copyWith(
          status: const BaseStatus.success(),
          customer: results[0] as CustomerEntity,
          connections: results[1] as List<ConnectionEntity>,
          invoices: results[2] as List<InvoiceEntity>,
          summary: results[3] as AccountSummaryEntity,
          selectedIndex: 0,
        ),
      );
    } catch (e) {
      _logger.e(e);
      emit(state.copyWith(status: BaseStatus.failure(ResponseError.from(e))));
    }
  }

  /// Re-reads the money without touching the profile or the line list — what a
  /// screen calls after a payment lands.
  Future<void> refreshBilling() async {
    try {
      final invoices = await _getInvoices.execute(null);
      final summary = await _getAccountSummary.execute();
      emit(state.copyWith(invoices: invoices, summary: summary));
    } catch (e) {
      _logger.e(e);
    }
  }

  void select(int index) {
    if (index < 0 || index >= state.connections.length) return;
    emit(state.copyWith(selectedIndex: index, isSwitcherOpen: false));
  }

  void toggleSwitcher() =>
      emit(state.copyWith(isSwitcherOpen: !state.isSwitcherOpen));

  void closeSwitcher() => emit(state.copyWith(isSwitcherOpen: false));
}
