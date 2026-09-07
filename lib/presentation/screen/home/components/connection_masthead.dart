import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isp_selfcare/core/extensions/money_extension.dart';
import 'package:isp_selfcare/l10n/l10n.dart';
import 'package:isp_selfcare/presentation/screen/dashboard/connection_status_view.dart';
import 'package:isp_selfcare/presentation/screen/dashboard/cubit/connections_cubit.dart';
import 'package:isp_selfcare/presentation/theme/base/theme_extension.dart';
import 'package:isp_selfcare/presentation/widgets/industry/industry.dart';

/// The dark block at the top of the home screen: the selected line, an
/// expandable switcher for the others, and three portfolio figures.
class ConnectionMasthead extends StatelessWidget {
  const ConnectionMasthead({super.key});

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final state = context.watch<ConnectionsCubit>().state;
    final connection = state.selected;
    if (connection == null) return const SizedBox.shrink();

    return ColoredBox(
      color: palette.accentRamp[900],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const _SelectedConnectionHeader(),
          if (state.isSwitcherOpen) const _SwitcherPanel(),
          const _PortfolioStrip(),
        ],
      ),
    );
  }
}

class _SelectedConnectionHeader extends StatelessWidget {
  const _SelectedConnectionHeader();

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final l10n = context.l10n;
    final cubit = context.read<ConnectionsCubit>();
    final state = context.watch<ConnectionsCubit>().state;
    final connection = state.selected!;
    final health = healthOf(connection, state.invoices);
    final ink = palette.onAccentSurface;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: cubit.toggleSwitcher,
        child: Container(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 14),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: ink.withValues(alpha: 0.18)),
            ),
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '${l10n.connection} '
                              '${state.selectedIndex + 1}/${state.connections.length}'
                          .toUpperCase(),
                      style: AppFonts.kicker(
                        size: 10.5,
                        color: palette.accentRamp[300],
                      ),
                    ),
                    Text(
                      connection.displayName,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppFonts.heading(
                        size: 24,
                        color: ink,
                        height: 1.15,
                      ),
                    ),
                    Text(
                      '${connection.code} · ${connection.packageName ?? ''}',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppFonts.body(
                        size: 11.5,
                        color: palette.accentRamp[300],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 8),
              DsTag(
                label: health.label(l10n),
                fontSize: 10,
                letterSpacingEm: 0.08,
                background: health.background(palette),
                foreground: health.foreground(palette),
              ),
              const SizedBox(width: 8),
              // The chevron flips to point up while the switcher is open.
              AnimatedRotation(
                turns: state.isSwitcherOpen ? 0.5 : 0,
                duration: const Duration(milliseconds: 150),
                child: DsIcon(AppIcons.chevronDown, size: 20, color: ink),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// The expanded list of every line, on a slightly lighter ground so it reads as
/// a drawer that opened out of the header rather than a separate panel.
class _SwitcherPanel extends StatelessWidget {
  const _SwitcherPanel();

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final l10n = context.l10n;
    final cubit = context.read<ConnectionsCubit>();
    final state = context.watch<ConnectionsCubit>().state;
    final ink = palette.onAccentSurface;

    return ColoredBox(
      color: palette.accentRamp[800],
      child: Column(
        children: [
          for (var i = 0; i < state.connections.length; i++)
            _SwitcherRow(
              index: i,
              isSelected: i == state.selectedIndex,
              onTap: () => cubit.select(i),
            ),
          // "Link another connection" — the design's affordance for adding a
          // line already billed to this customer under a different account.
          Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: cubit.closeSwitcher,
              child: Container(
                constraints: const BoxConstraints(minHeight: 60),
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 10,
                ),
                child: Row(
                  children: [
                    DsIcon(AppIcons.plus, size: 14, color: ink),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        l10n.linkAnother,
                        style: AppFonts.heading(size: 15, color: ink),
                      ),
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
}

class _SwitcherRow extends StatelessWidget {
  const _SwitcherRow({
    required this.index,
    required this.isSelected,
    required this.onTap,
  });

  final int index;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final l10n = context.l10n;
    final state = context.watch<ConnectionsCubit>().state;
    final connection = state.connections[index];
    final health = healthOf(connection, state.invoices);
    final ink = palette.onAccentSurface;
    final speed = connection.package?.downloadMbps.round() ?? 0;

    return Material(
      color: isSelected ? ink.withValues(alpha: 0.10) : Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Container(
          constraints: const BoxConstraints(minHeight: 60),
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: ink.withValues(alpha: 0.18)),
            ),
          ),
          child: Row(
            children: [
              // A filled square marks the active line; the outline alone marks
              // the others.
              Container(
                width: 12,
                height: 12,
                decoration: BoxDecoration(
                  color: isSelected
                      ? palette.accentRamp[300]
                      : Colors.transparent,
                  border: Border.all(
                    color: palette.accentRamp[300],
                    width: 1.5,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      connection.displayName,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppFonts.heading(size: 16, color: ink),
                    ),
                    Text(
                      '${connection.code} · $speed Mbps · '
                      '${state.dueFor(connection.id).toMoney(context)} '
                      '${l10n.due}',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppFonts.body(
                        size: 11.5,
                        color: palette.accentRamp[300],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 8),
              DsTag(
                label: health.label(l10n),
                fontSize: 10,
                background: health.background(palette),
                foreground: health.foreground(palette),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Three figures across the bottom of the masthead: how many lines, what they
/// owe in total, and how many need attention.
class _PortfolioStrip extends StatelessWidget {
  const _PortfolioStrip();

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final l10n = context.l10n;
    final state = context.watch<ConnectionsCubit>().state;
    final ink = palette.onAccentSurface;

    final cells = <(String, String)>[
      (l10n.titleHome, '${state.connections.length}'),
      (l10n.totalDue, state.totalDue.toMoney(context)),
      (l10n.needsAction, '${state.needsActionCount}'),
    ];

    return Container(
      color: ink.withValues(alpha: 0.18),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          for (var i = 0; i < cells.length; i++) ...[
            if (i > 0) const SizedBox(width: 1),
            Expanded(
              child: Container(
                color: palette.accentRamp[900],
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 12,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        cells[i].$2,
                        style: AppFonts.heading(
                          size: 22,
                          color: ink,
                          height: 1,
                        ),
                      ),
                    ),
                    Text(
                      cells[i].$1.toUpperCase(),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppFonts.kicker(
                        size: 10,
                        color: palette.accentRamp[300],
                        trackingEm: 0.1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
