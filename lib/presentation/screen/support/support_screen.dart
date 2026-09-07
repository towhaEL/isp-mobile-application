import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isp_selfcare/core/injector/injector.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';
import 'package:isp_selfcare/l10n/l10n.dart';
import 'package:isp_selfcare/presentation/route/app_router.gr.dart';
import 'package:isp_selfcare/presentation/screen/dashboard/cubit/connections_cubit.dart';
import 'package:isp_selfcare/presentation/screen/support/cubit/support_cubit.dart';
import 'package:isp_selfcare/presentation/theme/base/theme_extension.dart';
import 'package:isp_selfcare/presentation/widgets/industry/industry.dart';
import 'package:isp_selfcare/presentation/widgets/util/date_format.dart';

/// Is the line actually faulty, who to call, and what has already been raised.
@RoutePage()
class SupportScreen extends StatelessWidget {
  const SupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final connectionId = context.watch<ConnectionsCubit>().state.selected?.id;
    if (connectionId == null) return const DsLoading(height: 320);

    return BlocProvider<SupportCubit>(
      key: ValueKey(connectionId),
      create: (_) => injector<SupportCubit>()..load(connectionId: connectionId),
      child: _SupportView(connectionId: connectionId),
    );
  }
}

class _SupportView extends StatelessWidget {
  const _SupportView({required this.connectionId});

  final int connectionId;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return BlocBuilder<SupportCubit, SupportState>(
      builder: (context, state) {
        if (state.status.isLoading || state.status.initial) {
          return const DsLoading(height: 320);
        }

        return ListView(
          padding: const EdgeInsets.all(16),
          children: [
            _LineCheckCard(state: state, connectionId: connectionId),
            const SizedBox(height: 20),
            DsKicker(l10n.reachUs),
            const SizedBox(height: 4),
            _ContactList(contacts: state.contacts),
            const SizedBox(height: 20),
            DsKicker(l10n.yourTickets),
            const SizedBox(height: 8),
            if (state.hasTickets)
              _TicketList(tickets: state.tickets)
            else
              DsEmptyState(
                iconPath: AppIcons.chat,
                title: l10n.noTicketsTitle,
                body: l10n.noTicketsBody,
              ),
            const SizedBox(height: 16),
            DsButton(
              label: l10n.openTicket,
              variant: DsButtonVariant.primary,
              blueprint: true,
              block: true,
              minHeight: 52,
              fontSize: 15,
              onPressed: () => context.navigateTo(const NewTicketRoute()),
            ),
          ],
        );
      },
    );
  }
}

/// The automated diagnostic that answers "is it me or is it you" before the
/// customer spends twenty minutes on a hotline.
class _LineCheckCard extends StatelessWidget {
  const _LineCheckCard({required this.state, required this.connectionId});

  final SupportState state;
  final int connectionId;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final l10n = context.l10n;
    final check = state.lineCheck;

    return BlueprintBox(
      background: palette.accentRamp[100],
      borderColor: palette.accentRamp[200],
      padding: const EdgeInsets.all(14),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                DsKicker(
                  l10n.lineCheck,
                  color: palette.accentRamp[700],
                  trackingEm: 0.12,
                ),
                Text(
                  (check?.faultFound ?? false)
                      ? l10n.cannotReachTheLine
                      : l10n.noFaultOnYourLine,
                  style: AppFonts.heading(
                    size: 19,
                    color: palette.accentRamp[900],
                  ),
                ),
                Text(
                  check == null ? '' : formatDayMonthTime(check.checkedAt),
                  style: AppFonts.body(
                    size: 12,
                    color: palette.neutralRamp[700],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 12),
          DsButton(
            label: l10n.rerun,
            variant: DsButtonVariant.secondary,
            minHeight: 46,
            onPressed: () => context.read<SupportCubit>().rerunLineCheck(
              connectionId: connectionId,
            ),
          ),
        ],
      ),
    );
  }
}

class _ContactList extends StatelessWidget {
  const _ContactList({required this.contacts});

  final List<SupportContactEntity> contacts;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final l10n = context.l10n;

    (String, String) describe(SupportChannel channel) => switch (channel) {
      SupportChannel.hotline => (l10n.hotline, AppIcons.support),
      SupportChannel.phone => (l10n.phone, AppIcons.phone),
      SupportChannel.email => (l10n.email, AppIcons.mail),
      SupportChannel.liveChat => (l10n.liveChat, AppIcons.chat),
    };

    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: palette.divider)),
      ),
      child: Column(
        children: [
          for (final contact in contacts)
            Builder(
              builder: (context) {
                final (label, icon) = describe(contact.channel);
                return Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () => showDsToast(context, contact.value),
                    child: Container(
                      constraints: const BoxConstraints(minHeight: 50),
                      padding: const EdgeInsets.symmetric(vertical: 13),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: palette.divider),
                        ),
                      ),
                      child: Row(
                        children: [
                          DsIcon(
                            icon,
                            size: 18,
                            color: palette.accentRamp[700],
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                DsKicker(label, trackingEm: 0.1),
                                Text(
                                  contact.value,
                                  style: AppFonts.heading(
                                    size: 16,
                                    color: palette.text,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          DsIcon(
                            AppIcons.chevronRight,
                            size: 16,
                            color: palette.neutralRamp[500],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
        ],
      ),
    );
  }
}

class _TicketList extends StatelessWidget {
  const _TicketList({required this.tickets});

  final List<TicketEntity> tickets;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final l10n = context.l10n;

    String statusLabel(TicketStatus status) => switch (status) {
      TicketStatus.open => l10n.inProgress,
      TicketStatus.inProgress => l10n.inProgress,
      TicketStatus.resolved => l10n.closed,
      TicketStatus.closed => l10n.closed,
    };

    bool isLive(TicketStatus status) =>
        status == TicketStatus.open || status == TicketStatus.inProgress;

    return Column(
      children: [
        for (var i = 0; i < tickets.length; i++) ...[
          if (i > 0) const SizedBox(height: 10),
          Builder(
            builder: (context) {
              final ticket = tickets[i];
              return BlueprintBox(
                borderColor: palette.accentRamp[200],
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () =>
                        context.navigateTo(TicketThreadRoute(ticket: ticket)),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  ticket.title,
                                  style: AppFonts.heading(
                                    size: 15,
                                    color: palette.text,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8),
                              DsTag(
                                label: statusLabel(ticket.status),
                                fontSize: 10,
                                background: isLive(ticket.status)
                                    ? palette.accentRamp[200]
                                    : palette.neutralRamp[300],
                                foreground: isLive(ticket.status)
                                    ? palette.accentRamp[900]
                                    : palette.neutralRamp[900],
                              ),
                            ],
                          ),
                          const SizedBox(height: 4),
                          Text(
                            '#${ticket.id} · '
                            '${formatDayMonthYear(ticket.createdAt)} · '
                            '${l10n.repliesCount(ticket.replyCount)}',
                            style: AppFonts.body(
                              size: 12,
                              color: palette.neutralRamp[600],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ],
    );
  }
}
