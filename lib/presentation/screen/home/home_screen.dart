import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isp_selfcare/core/extensions/money_extension.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';
import 'package:isp_selfcare/l10n/l10n.dart';
import 'package:isp_selfcare/presentation/route/app_router.gr.dart';
import 'package:isp_selfcare/presentation/screen/dashboard/connection_status_view.dart';
import 'package:isp_selfcare/presentation/screen/dashboard/cubit/connections_cubit.dart';
import 'package:isp_selfcare/presentation/screen/home/components/connection_masthead.dart';
import 'package:isp_selfcare/presentation/screen/home/components/manage_tiles.dart';
import 'package:isp_selfcare/presentation/theme/base/theme_extension.dart';
import 'package:isp_selfcare/presentation/widgets/industry/industry.dart';

/// The landing screen: which line you are looking at, what it owes, every other
/// line at a glance, and twelve ways into the rest of the app.
@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConnectionsCubit, ConnectionsState>(
      builder: (context, state) {
        if (state.status.isLoading || state.status.initial) {
          return const DsLoading(height: 320);
        }
        if (!state.hasConnections) {
          return DsEmptyState(
            iconPath: AppIcons.wifi,
            title: context.l10n.titleHome,
            body: context.l10n.noTicketsBody,
          );
        }

        return RefreshIndicator(
          onRefresh: context.read<ConnectionsCubit>().load,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const ConnectionMasthead(),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    _AmountDueCard(state: state),
                    const SizedBox(height: 20),
                    DsKicker(context.l10n.allConnections),
                    const SizedBox(height: 8),
                    _AllConnectionsList(state: state),
                    const SizedBox(height: 20),
                    DsKicker(
                      '${context.l10n.manage} '
                      '${state.selected?.displayName ?? ''}',
                    ),
                    const SizedBox(height: 8),
                    const ManageTiles(),
                  ],
                ),
              ),
              const _OfferBanner(),
            ],
          ),
        );
      },
    );
  }
}

/// The blueprint panel that leads with the amount due on the selected line.
class _AmountDueCard extends StatelessWidget {
  const _AmountDueCard({required this.state});

  final ConnectionsState state;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final l10n = context.l10n;
    final connection = state.selected!;
    final health = healthOf(connection, state.invoices);
    final due = state.dueFor(connection.id);
    final nextInvoice = state.nextPayableFor(connection.id);

    return BlueprintBox(
      borderColor: palette.accentRamp[300],
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: DsKicker(
                  '${connection.displayName} · ${l10n.due}',
                  color: palette.accentRamp[700],
                  trackingEm: 0.12,
                ),
              ),
              const SizedBox(width: 8),
              DsTag.outline(label: connection.packageName ?? ''),
            ],
          ),
          const SizedBox(height: 6),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Flexible(
                child: Text(
                  due.toMoney(context),
                  style: AppFonts.heading(
                    size: 46,
                    color: palette.accentRamp[800],
                    height: 0.9,
                  ),
                ),
              ),
              if (nextInvoice != null) ...[
                const SizedBox(width: 10),
                Padding(
                  padding: const EdgeInsets.only(bottom: 6),
                  child: Text(
                    '${l10n.by} ${_shortDate(nextInvoice.dueDate)}',
                    style: AppFonts.body(
                      size: 12.5,
                      color: palette.neutralRamp[700],
                    ),
                  ),
                ),
              ],
            ],
          ),
          const SizedBox(height: 8),
          Text(
            health.note(l10n),
            style: AppFonts.body(size: 12.5, color: palette.neutralRamp[700]),
          ),
          const SizedBox(height: 14),
          Row(
            children: [
              Expanded(
                child: DsButton(
                  label: l10n.payThis,
                  variant: DsButtonVariant.primary,
                  blueprint: true,
                  minHeight: 50,
                  fontSize: 15,
                  onPressed: nextInvoice == null
                      ? null
                      : () => context.navigateTo(const PayRoute()),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: DsButton(
                  label: '${l10n.payAll} ${state.totalDue.toMoney(context)}',
                  variant: DsButtonVariant.secondary,
                  minHeight: 50,
                  onPressed: state.totalDue <= 0
                      ? null
                      : () => context.navigateTo(const PayRoute()),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// "28 Sep" — the design never shows a year on a due date, because a bill is
  /// always for the cycle you are in.
  static String _shortDate(DateTime date) {
    const months = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec',
    ];
    return '${date.day.toString().padLeft(2, '0')} '
        '${months[date.month - 1]}';
  }
}

/// Every line the customer holds, with its speed, what it owes and its state.
class _AllConnectionsList extends StatelessWidget {
  const _AllConnectionsList({required this.state});

  final ConnectionsState state;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;

    return Container(
      // A 1px gap over an accent ground is how the design draws its dividers.
      color: palette.accentRamp[200],
      child: Column(
        children: [
          for (var i = 0; i < state.connections.length; i++) ...[
            if (i > 0) const SizedBox(height: 1),
            _ConnectionRow(
              connection: state.connections[i],
              isSelected: i == state.selectedIndex,
              due: state.dueFor(state.connections[i].id),
              health: healthOf(state.connections[i], state.invoices),
              onTap: () => context.read<ConnectionsCubit>().select(i),
            ),
          ],
        ],
      ),
    );
  }
}

class _ConnectionRow extends StatelessWidget {
  const _ConnectionRow({
    required this.connection,
    required this.isSelected,
    required this.due,
    required this.health,
    required this.onTap,
  });

  final ConnectionEntity connection;
  final bool isSelected;
  final double due;
  final ConnectionHealth health;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final speed = connection.package?.downloadMbps.round() ?? 0;

    return Material(
      color: isSelected ? palette.accentRamp[100] : palette.bg,
      child: InkWell(
        onTap: onTap,
        child: Container(
          constraints: const BoxConstraints(minHeight: 64),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          child: Row(
            children: [
              SizedBox(
                width: 56,
                child: Text(
                  '$speed',
                  style: AppFonts.heading(
                    size: 24,
                    color: palette.accentRamp[800],
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      connection.displayName,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppFonts.heading(size: 15, color: palette.text),
                    ),
                    Text(
                      '${connection.code} · ${connection.packageName ?? ''}',
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
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    due.toMoney(context),
                    style: AppFonts.heading(size: 15, color: palette.text),
                  ),
                  Text(
                    health.label(context.l10n).toUpperCase(),
                    style: AppFonts.body(
                      size: 10.5,
                      color: health.captionInk(palette),
                      letterSpacing: 10.5 * 0.08,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// The referral promo strip at the foot of the home screen.
class _OfferBanner extends StatelessWidget {
  const _OfferBanner();

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final l10n = context.l10n;

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 22),
      child: Container(
        color: palette.accentRamp[800],
        padding: const EdgeInsets.all(14),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  DsKicker(
                    l10n.offer,
                    color: palette.accentRamp[300],
                    trackingEm: 0.14,
                  ),
                  Text(
                    l10n.referBanner,
                    style: AppFonts.heading(
                      size: 17,
                      color: palette.onAccentSurface,
                      height: 1.2,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 12),
            DsButton(
              label: l10n.view,
              minHeight: 44,
              background: palette.onAccentSurface,
              foreground: palette.accentRamp[900],
              borderColor: palette.onAccentSurface,
              onPressed: () => context.navigateTo(const ReferralRoute()),
            ),
          ],
        ),
      ),
    );
  }
}
