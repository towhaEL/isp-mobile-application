import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isp_selfcare/core/injector/injector.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';
import 'package:isp_selfcare/l10n/l10n.dart';
import 'package:isp_selfcare/presentation/screen/dashboard/cubit/connections_cubit.dart';
import 'package:isp_selfcare/presentation/screen/ticket/cubit/ticket_thread_cubit.dart';
import 'package:isp_selfcare/presentation/theme/base/theme_extension.dart';
import 'package:isp_selfcare/presentation/widgets/industry/industry.dart';
import 'package:isp_selfcare/presentation/widgets/util/date_format.dart';

/// The conversation on one ticket, with a composer pinned to the bottom.
@RoutePage()
class TicketThreadScreen extends StatelessWidget {
  const TicketThreadScreen({required this.ticket, super.key});

  final TicketEntity ticket;

  @override
  Widget build(BuildContext context) => BlocProvider<TicketThreadCubit>(
    create: (_) => injector<TicketThreadCubit>()..load(ticketId: ticket.id),
    child: _ThreadView(ticket: ticket),
  );
}

class _ThreadView extends StatefulWidget {
  const _ThreadView({required this.ticket});

  final TicketEntity ticket;

  @override
  State<_ThreadView> createState() => _ThreadViewState();
}

class _ThreadViewState extends State<_ThreadView> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final connection = context.watch<ConnectionsCubit>().state.selected;

    return BlocConsumer<TicketThreadCubit, TicketThreadState>(
      listenWhen: (a, b) => a.draft != b.draft && b.draft.isEmpty,
      listener: (context, state) => _controller.clear(),
      builder: (context, state) => Column(
        children: [
          _ThreadHeader(
            ticket: widget.ticket,
            connectionLabel: connection?.displayName ?? '',
          ),
          Expanded(
            child: state.status.isLoading || state.status.initial
                ? const DsLoading()
                : _MessageList(messages: state.messages),
          ),
          _Composer(
            controller: _controller,
            canSend: state.canSend,
            onSend: () => context.read<TicketThreadCubit>().send(
              ticketId: widget.ticket.id,
            ),
          ),
        ],
      ),
    );
  }
}

class _ThreadHeader extends StatelessWidget {
  const _ThreadHeader({required this.ticket, required this.connectionLabel});

  final TicketEntity ticket;
  final String connectionLabel;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final l10n = context.l10n;
    final isLive =
        ticket.status == TicketStatus.open ||
        ticket.status == TicketStatus.inProgress;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: palette.accentRamp[100],
        border: Border(bottom: BorderSide(color: palette.accentRamp[200])),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  ticket.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppFonts.heading(
                    size: 17,
                    color: palette.accentRamp[900],
                  ),
                ),
                Text(
                  '#${ticket.id} · $connectionLabel'
                  '${ticket.eta == null ? '' : ' · ${ticket.eta}'}',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppFonts.body(
                    size: 11.5,
                    color: palette.neutralRamp[700],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
          DsTag(
            label: isLive ? l10n.inProgress : l10n.closed,
            fontSize: 10,
            background: palette.accentRamp[200],
            foreground: palette.accentRamp[900],
          ),
        ],
      ),
    );
  }
}

class _MessageList extends StatelessWidget {
  const _MessageList({required this.messages});

  final List<TicketMessageEntity> messages;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;

    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: messages.length,
      separatorBuilder: (_, _) => const SizedBox(height: 12),
      itemBuilder: (context, i) {
        final message = messages[i];
        final mine = message.fromCustomer;

        return Align(
          alignment: mine ? Alignment.centerRight : Alignment.centerLeft,
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.sizeOf(context).width * 0.82,
            ),
            child: Column(
              crossAxisAlignment: mine
                  ? CrossAxisAlignment.end
                  : CrossAxisAlignment.start,
              children: [
                Text(
                  '${message.authorLabel ?? ''} · '
                          '${formatDayMonthTime(message.sentAt)}'
                      .toUpperCase(),
                  style: AppFonts.body(
                    size: 10,
                    color: palette.neutralRamp[600],
                    letterSpacing: 10 * 0.12,
                  ),
                ),
                const SizedBox(height: 3),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 11,
                    vertical: 9,
                  ),
                  decoration: BoxDecoration(
                    // The customer's own messages are tinted; support's are
                    // plain, so the thread reads as a conversation without
                    // needing avatars.
                    color: mine ? palette.accentRamp[100] : Colors.transparent,
                    border: Border.all(
                      color: mine ? palette.accentRamp[300] : palette.divider,
                    ),
                  ),
                  child: Text(
                    message.body,
                    style: AppFonts.body(
                      size: 13.5,
                      color: palette.text,
                      height: 1.5,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _Composer extends StatelessWidget {
  const _Composer({
    required this.controller,
    required this.canSend,
    required this.onSend,
  });

  final TextEditingController controller;
  final bool canSend;
  final VoidCallback onSend;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: palette.bg,
        border: Border(top: BorderSide(color: palette.divider)),
      ),
      child: SafeArea(
        top: false,
        child: Row(
          children: [
            Expanded(
              child: DsInput(
                controller: controller,
                hintText: context.l10n.reply,
                onChanged: context.read<TicketThreadCubit>().setDraft,
              ),
            ),
            const SizedBox(width: 8),
            DsButton(
              label: '',
              variant: DsButtonVariant.primary,
              blueprint: true,
              minHeight: 46,
              padding: const EdgeInsets.symmetric(horizontal: 18),
              leading: DsIcon(AppIcons.send, size: 18, color: palette.bg),
              onPressed: canSend ? onSend : null,
            ),
          ],
        ),
      ),
    );
  }
}
