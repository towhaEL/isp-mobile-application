import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:isp_selfcare/core/error/response_error.dart';
import 'package:isp_selfcare/core/state_status/base_status.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';
import 'package:isp_selfcare/domain/use_cases/network/get_devices_use_case.dart';
import 'package:isp_selfcare/domain/use_cases/network/get_wifi_settings_use_case.dart';
import 'package:isp_selfcare/domain/use_cases/network/restart_router_use_case.dart';
import 'package:isp_selfcare/domain/use_cases/network/save_wifi_settings_use_case.dart';
import 'package:isp_selfcare/domain/use_cases/network/set_device_blocked_use_case.dart';
import 'package:logger/logger.dart';

part 'wifi_cubit.freezed.dart';
part 'wifi_state.dart';

/// Router settings and the devices attached to them.
///
/// Edits are held as a draft beside the saved values, so the save button can
/// tell the customer there is nothing to save — and so leaving the screen
/// without saving does not quietly change their network.
@injectable
class WifiCubit extends Cubit<WifiState> {
  WifiCubit(
    this._getSettings,
    this._saveSettings,
    this._getDevices,
    this._setDeviceBlocked,
    this._restartRouter,
    this._logger,
  ) : super(const WifiState());

  final GetWifiSettingsUseCase _getSettings;
  final SaveWifiSettingsUseCase _saveSettings;
  final GetDevicesUseCase _getDevices;
  final SetDeviceBlockedUseCase _setDeviceBlocked;
  final RestartRouterUseCase _restartRouter;
  final Logger _logger;

  Future<void> load({required int connectionId}) async {
    emit(state.copyWith(status: const BaseStatus.loading()));
    try {
      final results = await Future.wait([
        _getSettings.execute(connectionId),
        _getDevices.execute(connectionId),
      ]);
      final settings = results[0] as WifiSettingsEntity;
      emit(
        state.copyWith(
          status: const BaseStatus.success(),
          settings: settings,
          draft: settings,
          devices: results[1] as List<ConnectedDeviceEntity>,
        ),
      );
    } catch (e) {
      _logger.e(e);
      emit(state.copyWith(status: BaseStatus.failure(ResponseError.from(e))));
    }
  }

  void setSsid(String value) =>
      emit(state.copyWith(draft: state.draft?.copyWith(ssid: value)));

  void setPassword(String value) =>
      emit(state.copyWith(draft: state.draft?.copyWith(password: value)));

  void setBand(WifiBand band) =>
      emit(state.copyWith(draft: state.draft?.copyWith(band: band)));

  void togglePasswordVisible() =>
      emit(state.copyWith(isPasswordVisible: !state.isPasswordVisible));

  Future<void> save({required int connectionId}) async {
    final draft = state.draft;
    if (draft == null || state.isClean) return;

    emit(state.copyWith(saveStatus: const BaseStatus.loading()));
    try {
      final saved = await _saveSettings.execute((
        connectionId: connectionId,
        settings: draft,
      ));
      emit(
        state.copyWith(
          saveStatus: const BaseStatus.success(),
          settings: saved,
          draft: saved,
        ),
      );
    } catch (e) {
      _logger.e(e);
      emit(
        state.copyWith(saveStatus: BaseStatus.failure(ResponseError.from(e))),
      );
    }
  }

  /// The guest network is a switch, not part of the draft: the design applies
  /// it immediately rather than behind the save button.
  Future<void> toggleGuestNetwork({required int connectionId}) async {
    final draft = state.draft;
    if (draft == null) return;

    final updated = draft.copyWith(
      guestNetworkEnabled: !draft.guestNetworkEnabled,
    );
    emit(state.copyWith(draft: updated, settings: updated));
    try {
      await _saveSettings.execute((
        connectionId: connectionId,
        settings: updated,
      ));
    } catch (e) {
      _logger.e(e);
      emit(state.copyWith(draft: draft, settings: draft));
    }
  }

  Future<void> toggleDeviceBlocked({
    required int connectionId,
    required ConnectedDeviceEntity device,
  }) async {
    final blocked = !device.isBlocked;
    final previous = state.devices;
    emit(
      state.copyWith(
        devices: [
          for (final d in previous)
            if (d.id == device.id) d.copyWith(isBlocked: blocked) else d,
        ],
      ),
    );

    try {
      await _setDeviceBlocked.execute((
        connectionId: connectionId,
        deviceId: device.id,
        blocked: blocked,
      ));
    } catch (e) {
      _logger.e(e);
      emit(state.copyWith(devices: previous));
    }
  }

  Future<void> restartRouter({required int connectionId}) async {
    try {
      await _restartRouter.execute(connectionId);
    } catch (e) {
      _logger.e(e);
    }
  }
}
