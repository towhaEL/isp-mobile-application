import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isp_selfcare/core/injector/injector.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';
import 'package:isp_selfcare/l10n/l10n.dart';
import 'package:isp_selfcare/presentation/screen/dashboard/cubit/connections_cubit.dart';
import 'package:isp_selfcare/presentation/screen/wifi/cubit/wifi_cubit.dart';
import 'package:isp_selfcare/presentation/theme/base/theme_extension.dart';
import 'package:isp_selfcare/presentation/widgets/industry/industry.dart';

/// The router the customer can actually reach: network name, password, band,
/// guest access, a restart, and what is connected right now.
@RoutePage()
class WifiScreen extends StatelessWidget {
  const WifiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final connectionId = context.watch<ConnectionsCubit>().state.selected?.id;
    if (connectionId == null) return const DsLoading(height: 320);

    return BlocProvider<WifiCubit>(
      key: ValueKey(connectionId),
      create: (_) => injector<WifiCubit>()..load(connectionId: connectionId),
      child: _WifiView(connectionId: connectionId),
    );
  }
}

class _WifiView extends StatefulWidget {
  const _WifiView({required this.connectionId});

  final int connectionId;

  @override
  State<_WifiView> createState() => _WifiViewState();
}

class _WifiViewState extends State<_WifiView> {
  final _ssidController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _seeded = false;

  @override
  void dispose() {
    _ssidController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return BlocConsumer<WifiCubit, WifiState>(
      listenWhen: (a, b) => a.settings != b.settings,
      listener: (context, state) {
        // Seed the fields once the router's real values arrive, and again
        // after a save — but never mid-edit, or typing would fight the state.
        final settings = state.settings;
        if (settings == null) return;
        if (!_seeded || state.isClean) {
          _ssidController.text = settings.ssid;
          _passwordController.text = settings.password;
          _seeded = true;
        }
      },
      builder: (context, state) {
        final draft = state.draft;
        if (draft == null) return const DsLoading(height: 320);

        return ListView(
          padding: const EdgeInsets.all(16),
          children: [
            _NetworkCard(
              state: state,
              draft: draft,
              connectionId: widget.connectionId,
              ssidController: _ssidController,
              passwordController: _passwordController,
            ),
            const SizedBox(height: 18),
            _RouterActions(state: state, connectionId: widget.connectionId),
            const SizedBox(height: 18),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(child: DsKicker(l10n.devices)),
                Text(
                  '${state.activeCount}${l10n.active2}'
                  '${state.blockedCount}${l10n.blocked}',
                  style: AppFonts.body(
                    size: 11.5,
                    color: context.palette.neutralRamp[600],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            _DeviceList(state: state, connectionId: widget.connectionId),
          ],
        );
      },
    );
  }
}

class _NetworkCard extends StatelessWidget {
  const _NetworkCard({
    required this.state,
    required this.draft,
    required this.connectionId,
    required this.ssidController,
    required this.passwordController,
  });

  final WifiState state;
  final WifiSettingsEntity draft;
  final int connectionId;
  final TextEditingController ssidController;
  final TextEditingController passwordController;

  static const _bands = [WifiBand.ghz24, WifiBand.ghz5, WifiBand.both];

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final l10n = context.l10n;
    final cubit = context.read<WifiCubit>();

    return BlueprintBox(
      borderColor: palette.accentRamp[300],
      padding: const EdgeInsets.all(14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    DsKicker(
                      l10n.network,
                      color: palette.accentRamp[700],
                      trackingEm: 0.12,
                    ),
                    Text(
                      state.settings?.ssid ?? draft.ssid,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppFonts.heading(
                        size: 22,
                        color: palette.accentRamp[900],
                      ),
                    ),
                  ],
                ),
              ),
              if (draft.routerModel != null) ...[
                const SizedBox(width: 8),
                DsTag.outline(label: draft.routerModel!),
              ],
            ],
          ),
          const SizedBox(height: 10),
          DsField(
            label: l10n.ssid,
            child: DsInput(
              controller: ssidController,
              onChanged: cubit.setSsid,
            ),
          ),
          const SizedBox(height: 12),
          DsField(
            label: l10n.wifiPassword,
            child: Row(
              children: [
                Expanded(
                  child: DsInput(
                    controller: passwordController,
                    obscureText: !state.isPasswordVisible,
                    onChanged: cubit.setPassword,
                  ),
                ),
                const SizedBox(width: 8),
                DsButton(
                  label: state.isPasswordVisible
                      ? l10n.hideLabel
                      : l10n.showLabel,
                  variant: DsButtonVariant.secondary,
                  minHeight: 44,
                  onPressed: cubit.togglePasswordVisible,
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          DsKicker(l10n.band, color: palette.accentRamp[700], trackingEm: 0.12),
          const SizedBox(height: 6),
          DsSegmented(
            labels: ['2.4 GHz', '5 GHz', l10n.both],
            selectedIndex: _bands.indexOf(draft.band),
            onSelected: (i) => cubit.setBand(_bands[i]),
          ),
          const SizedBox(height: 14),
          DsButton(
            label: state.isClean
                ? l10n.noChangesToSave
                : l10n.saveAndReconnectDevices,
            variant: DsButtonVariant.primary,
            blueprint: true,
            block: true,
            minHeight: 50,
            onPressed: state.isClean
                ? null
                : () async {
                    await cubit.save(connectionId: connectionId);
                    if (!context.mounted) return;
                    showDsToast(context, l10n.networkUpdatedDevicesReconnectIn);
                  },
          ),
        ],
      ),
    );
  }
}

class _RouterActions extends StatelessWidget {
  const _RouterActions({required this.state, required this.connectionId});

  final WifiState state;
  final int connectionId;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final l10n = context.l10n;
    final cubit = context.read<WifiCubit>();
    final guestOn = state.draft?.guestNetworkEnabled ?? false;

    return Container(
      color: palette.accentRamp[200],
      child: Column(
        children: [
          Container(
            color: palette.bg,
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        l10n.guestNetwork,
                        style: AppFonts.heading(size: 15, color: palette.text),
                      ),
                      Text(
                        guestOn
                            ? l10n.guestNetworkOn(state.draft?.guestSsid ?? '')
                            : l10n.offVisitorsUseTheMain,
                        style: AppFonts.body(
                          size: 12,
                          color: palette.neutralRamp[600],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 12),
                DsSwitch(
                  value: guestOn,
                  semanticLabel: l10n.guestNetwork,
                  onChanged: (_) =>
                      cubit.toggleGuestNetwork(connectionId: connectionId),
                ),
              ],
            ),
          ),
          const SizedBox(height: 1),
          Material(
            color: palette.bg,
            child: InkWell(
              onTap: () => _confirmRestart(context, cubit),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            l10n.restartRouter,
                            style: AppFonts.heading(
                              size: 15,
                              color: palette.text,
                            ),
                          ),
                          Text(
                            l10n.restartNote,
                            style: AppFonts.body(
                              size: 12,
                              color: palette.neutralRamp[600],
                            ),
                          ),
                        ],
                      ),
                    ),
                    DsIcon(
                      AppIcons.autopay,
                      size: 18,
                      color: palette.accentRamp[700],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Restarting drops every device for about a minute and a half, so it asks
  /// first — this is the one action on the screen that interrupts service.
  Future<void> _confirmRestart(BuildContext context, WifiCubit cubit) async {
    final l10n = context.l10n;
    final confirmed = await showDsConfirmDialog(
      context,
      title: l10n.restartTheRouter,
      body: l10n.everyDeviceDropsForAbout,
      confirmLabel: l10n.restartNow,
    );
    if (!confirmed || !context.mounted) return;

    await cubit.restartRouter(connectionId: connectionId);
    if (!context.mounted) return;
    showDsToast(context, l10n.routerRestartingBackInAbout);
  }
}

class _DeviceList extends StatelessWidget {
  const _DeviceList({required this.state, required this.connectionId});

  final WifiState state;
  final int connectionId;

  static String iconFor(DeviceKind kind) => switch (kind) {
    DeviceKind.mobile => AppIcons.mobile,
    DeviceKind.laptop => AppIcons.laptop,
    DeviceKind.tv => AppIcons.tv,
    DeviceKind.camera => AppIcons.cam,
    DeviceKind.unknown => AppIcons.mobile,
  };

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final l10n = context.l10n;
    final cubit = context.read<WifiCubit>();

    return Container(
      color: palette.accentRamp[200],
      child: Column(
        children: [
          for (var i = 0; i < state.devices.length; i++) ...[
            if (i > 0) const SizedBox(height: 1),
            Builder(
              builder: (context) {
                final device = state.devices[i];
                return Opacity(
                  opacity: device.isBlocked ? 0.5 : 1,
                  child: Container(
                    color: palette.bg,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 11,
                    ),
                    child: Row(
                      children: [
                        DsIcon(
                          iconFor(device.kind),
                          size: 18,
                          color: palette.accentRamp[700],
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                device.name,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: AppFonts.heading(
                                  size: 15,
                                  color: palette.text,
                                ),
                              ),
                              Text(
                                '${device.ipAddress} · '
                                '${device.throughputMbps} ${l10n.mbpsUnit}',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: AppFonts.body(
                                  size: 11.5,
                                  color: palette.neutralRamp[600],
                                ),
                              ),
                            ],
                          ),
                        ),
                        DsButton(
                          label: device.isBlocked ? l10n.unblock : l10n.block,
                          variant: DsButtonVariant.ghost,
                          minHeight: 44,
                          fontSize: 12,
                          foreground: device.isBlocked
                              ? palette.neutralRamp[600]
                              : palette.accentRamp[800],
                          onPressed: () async {
                            await cubit.toggleDeviceBlocked(
                              connectionId: connectionId,
                              device: device,
                            );
                            if (!context.mounted) return;
                            showDsToast(
                              context,
                              device.isBlocked
                                  ? l10n.deviceAllowedAgain
                                  : l10n.deviceBlockedOnThisNetwork,
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ],
      ),
    );
  }
}
