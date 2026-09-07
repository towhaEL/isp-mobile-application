import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isp_selfcare/core/injector/injector.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';
import 'package:isp_selfcare/l10n/l10n.dart';
import 'package:isp_selfcare/presentation/route/app_router.gr.dart';
import 'package:isp_selfcare/presentation/screen/dashboard/cubit/connections_cubit.dart';
import 'package:isp_selfcare/presentation/screen/ticket/cubit/new_ticket_cubit.dart';
import 'package:isp_selfcare/presentation/theme/base/theme_extension.dart';
import 'package:isp_selfcare/presentation/widgets/industry/industry.dart';

/// Report a fault: which line, what kind of problem, and when an engineer can
/// visit.
@RoutePage()
class NewTicketScreen extends StatelessWidget {
  const NewTicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final connection = context.watch<ConnectionsCubit>().state.selected;
    if (connection == null) return const DsLoading(height: 320);

    return BlocProvider<NewTicketCubit>(
      create: (_) => injector<NewTicketCubit>(),
      child: _NewTicketView(connection: connection),
    );
  }
}

class _NewTicketView extends StatefulWidget {
  const _NewTicketView({required this.connection});

  final ConnectionEntity connection;

  @override
  State<_NewTicketView> createState() => _NewTicketViewState();
}

class _NewTicketViewState extends State<_NewTicketView> {
  final _descriptionController = TextEditingController();
  final _timeController = TextEditingController();

  @override
  void dispose() {
    _descriptionController.dispose();
    _timeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return BlocBuilder<NewTicketCubit, NewTicketState>(
      builder: (context, state) => Padding(
        padding: const EdgeInsets.all(16),
        child: state.isSubmitted
            ? _SubmittedPanel(ticket: state.createdTicket!)
            : _TicketForm(
                connection: widget.connection,
                state: state,
                descriptionController: _descriptionController,
                timeController: _timeController,
                placeholder: l10n.ticketPlaceholder,
              ),
      ),
    );
  }
}

class _TicketForm extends StatelessWidget {
  const _TicketForm({
    required this.connection,
    required this.state,
    required this.descriptionController,
    required this.timeController,
    required this.placeholder,
  });

  final ConnectionEntity connection;
  final NewTicketState state;
  final TextEditingController descriptionController;
  final TextEditingController timeController;
  final String placeholder;

  static const _issues = [
    TicketIssueType.noConnection,
    TicketIssueType.slowSpeed,
    TicketIssueType.frequentDrops,
    TicketIssueType.billing,
  ];

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final l10n = context.l10n;
    final cubit = context.read<NewTicketCubit>();

    String issueLabel(TicketIssueType type) => switch (type) {
      TicketIssueType.noConnection => l10n.noConnection,
      TicketIssueType.slowSpeed => l10n.slowSpeed,
      TicketIssueType.frequentDrops => l10n.frequentDrops,
      TicketIssueType.billing => l10n.billingQuestion,
    };

    return ListView(
      padding: EdgeInsets.zero,
      children: [
        DsField(
          label: l10n.connection,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: Text(
              '${connection.displayName} · ${connection.code}',
              style: AppFonts.heading(size: 17, color: palette.text),
            ),
          ),
        ),
        const SizedBox(height: 16),
        DsField(
          label: l10n.problem,
          child: Column(
            children: [
              for (var i = 0; i < _issues.length; i++) ...[
                if (i > 0) const SizedBox(height: 8),
                DsOptionRow(
                  label: issueLabel(_issues[i]),
                  selected: state.issue == _issues[i],
                  onTap: () => cubit.selectIssue(_issues[i]),
                ),
              ],
            ],
          ),
        ),
        const SizedBox(height: 16),
        DsField(
          label: l10n.whatHappening,
          child: DsInput.multiline(
            controller: descriptionController,
            hintText: placeholder,
            onChanged: cubit.setDescription,
          ),
        ),
        const SizedBox(height: 16),
        DsField(
          label: l10n.bestTime,
          child: DsInput(
            controller: timeController,
            hintText: l10n.bestTimeVal,
            onChanged: cubit.setPreferredTime,
          ),
        ),
        const SizedBox(height: 16),
        DsButton(
          label: l10n.submitTicket,
          variant: DsButtonVariant.primary,
          blueprint: true,
          block: true,
          minHeight: 52,
          fontSize: 15,
          onPressed: state.canSubmit
              ? () => cubit.submit(connectionId: connection.id)
              : null,
        ),
      ],
    );
  }
}

class _SubmittedPanel extends StatelessWidget {
  const _SubmittedPanel({required this.ticket});

  final TicketEntity ticket;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final l10n = context.l10n;

    return BlueprintBox(
      borderColor: palette.accentRamp[300],
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 22),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          DsIcon(AppIcons.check, size: 42, color: palette.accent),
          const SizedBox(height: 10),
          Text(
            l10n.ticketOpenNumber(ticket.id),
            textAlign: TextAlign.center,
            style: AppFonts.heading(size: 25, color: palette.text),
          ),
          const SizedBox(height: 6),
          Text(
            l10n.ticketOpenBody,
            textAlign: TextAlign.center,
            style: AppFonts.body(size: 13, color: palette.neutralRamp[700]),
          ),
          const SizedBox(height: 16),
          DsButton(
            label: l10n.viewThread,
            variant: DsButtonVariant.primary,
            blueprint: true,
            minHeight: 48,
            onPressed: () =>
                context.navigateTo(TicketThreadRoute(ticket: ticket)),
          ),
        ],
      ),
    );
  }
}
