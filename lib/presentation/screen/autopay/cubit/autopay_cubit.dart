import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:isp_selfcare/core/error/response_error.dart';
import 'package:isp_selfcare/core/state_status/base_status.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';
import 'package:isp_selfcare/domain/use_cases/billing/get_autopay_use_case.dart';
import 'package:isp_selfcare/domain/use_cases/billing/get_payment_methods_use_case.dart';
import 'package:isp_selfcare/domain/use_cases/billing/save_autopay_use_case.dart';
import 'package:logger/logger.dart';

part 'autopay_cubit.freezed.dart';
part 'autopay_state.dart';

/// Setting up the standing instruction: what to charge, when, and for which
/// lines.
@injectable
class AutopayCubit extends Cubit<AutopayState> {
  AutopayCubit(
    this._getAutopay,
    this._getPaymentMethods,
    this._saveAutopay,
    this._logger,
  ) : super(const AutopayState());

  final GetAutopayUseCase _getAutopay;
  final GetPaymentMethodsUseCase _getPaymentMethods;
  final SaveAutopayUseCase _saveAutopay;
  final Logger _logger;

  Future<void> load({required List<int> defaultConnectionIds}) async {
    emit(state.copyWith(status: const BaseStatus.loading()));
    try {
      final results = await Future.wait([
        _getAutopay.execute(),
        _getPaymentMethods.execute(),
      ]);
      final saved = results[0] as AutopayConfigEntity;
      final methods = results[1] as List<PaymentMethodEntity>;

      emit(
        state.copyWith(
          status: const BaseStatus.success(),
          methods: methods,
          config: saved,
          // A first-time customer gets a sensible starting point: their first
          // line and the first saved method, so turning the switch on does not
          // present an empty form.
          draft: saved.enabled
              ? saved
              : saved.copyWith(
                  connectionIds: defaultConnectionIds.take(1).toList(),
                  source: saved.source ?? methods.firstOrNull,
                ),
        ),
      );
    } catch (e) {
      _logger.e(e);
      emit(state.copyWith(status: BaseStatus.failure(ResponseError.from(e))));
    }
  }

  void toggleEnabled() => emit(
    state.copyWith(
      draft: state.draft?.copyWith(enabled: !(state.draft?.enabled ?? false)),
      // Re-opening the form after a save should show the form, not the
      // confirmation panel.
      isSaved: false,
    ),
  );

  void selectSource(PaymentMethodEntity method) =>
      emit(state.copyWith(draft: state.draft?.copyWith(source: method)));

  void selectTiming(AutopayTiming timing) =>
      emit(state.copyWith(draft: state.draft?.copyWith(timing: timing)));

  void toggleConnection(int connectionId) {
    final draft = state.draft;
    if (draft == null) return;

    final ids = List<int>.from(draft.connectionIds);
    if (ids.contains(connectionId)) {
      ids.remove(connectionId);
    } else {
      ids.add(connectionId);
    }
    emit(state.copyWith(draft: draft.copyWith(connectionIds: ids)));
  }

  Future<void> save() async {
    final draft = state.draft;
    if (draft == null) return;

    emit(state.copyWith(saveStatus: const BaseStatus.loading()));
    try {
      final saved = await _saveAutopay.execute(draft);
      emit(
        state.copyWith(
          saveStatus: const BaseStatus.success(),
          config: saved,
          draft: saved,
          isSaved: true,
        ),
      );
    } catch (e) {
      _logger.e(e);
      emit(
        state.copyWith(saveStatus: BaseStatus.failure(ResponseError.from(e))),
      );
    }
  }
}
