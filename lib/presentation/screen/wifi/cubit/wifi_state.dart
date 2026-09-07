part of 'wifi_cubit.dart';

@freezed
sealed class WifiState with _$WifiState {
  const factory WifiState({
    @Default(BaseStatus.initial()) BaseStatus status,
    @Default(BaseStatus.initial()) BaseStatus saveStatus,
    @Default(<ConnectedDeviceEntity>[]) List<ConnectedDeviceEntity> devices,
    @Default(false) bool isPasswordVisible,

    /// What the router currently holds.
    WifiSettingsEntity? settings,

    /// What the form holds. Equal to [settings] until the customer edits.
    WifiSettingsEntity? draft,
  }) = _WifiState;

  const WifiState._();

  /// Nothing to save. Only the fields behind the save button count — the guest
  /// switch applies immediately, so it must not make the button look pending.
  bool get isClean =>
      settings == null ||
      draft == null ||
      (settings!.ssid == draft!.ssid &&
          settings!.password == draft!.password &&
          settings!.band == draft!.band);

  int get blockedCount => devices.where((d) => d.isBlocked).length;

  int get activeCount => devices.length - blockedCount;
}
