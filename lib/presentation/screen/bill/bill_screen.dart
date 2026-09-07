import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isp_selfcare/core/extensions/money_extension.dart';
import 'package:isp_selfcare/core/injector/injector.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';
import 'package:isp_selfcare/l10n/l10n.dart';
import 'package:isp_selfcare/presentation/route/app_router.gr.dart';
import 'package:isp_selfcare/presentation/screen/bill/cubit/bill_cubit.dart';
import 'package:isp_selfcare/presentation/screen/dashboard/connection_status_view.dart';
import 'package:isp_selfcare/presentation/screen/dashboard/cubit/connections_cubit.dart';
import 'package:isp_selfcare/presentation/theme/base/theme_extension.dart';
import 'package:isp_selfcare/presentation/widgets/industry/industry.dart';
import 'package:isp_selfcare/presentation/widgets/util/date_format.dart';

/// What this line owes, how to settle it, and everything already paid.
@RoutePage()
class BillScreen extends StatelessWidget {
  const BillScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final connectionId = context.watch<ConnectionsCubit>().state.selected?.id;

    return BlocProvider<BillCubit>(
      // Keyed by the selected line so switching connections in the masthead
      // rebuilds the cubit against the new one rather than showing the
      // previous line's payment history.
      key: ValueKey(connectionId),
      create: (_) => injector<BillCubit>()..load(connectionId: connectionId),
      child: const _BillView(),
    );
  }
}

class _BillView extends StatelessWidget {
  const _BillView();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final connections = context.watch<ConnectionsCubit>().state;
    final connection = connections.selected;
    if (connection == null) return const DsLoading(height: 320);

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        _AmountDuePanel(connection: connection, state: connections),
        const SizedBox(height: 20),
        const _AutopayRow(),
        const SizedBox(height: 20),
        DsKicker(l10n.paymentHistory),
        const SizedBox(height: 6),
        BlocBuilder<BillCubit, BillState>(
          builder: (context, state) {
            if (state.status.isLoading || state.status.initial) {
              return const DsLoading();
            }
            if (state.payments.isEmpty) {
              return DsEmptyState(
                iconPath: AppIcons.bill,
                title: l10n.paymentHistory,
                body: l10n.noNotifBody,
              );
            }
            return _PaymentHistoryTable(payments: state.payments);
          },
        ),
      ],
    );
  }
}

/// The dark panel leading with the outstanding amount and a single call to
/// action.
class _AmountDuePanel extends StatelessWidget {
  const _AmountDuePanel({required this.connection, required this.state});

  final ConnectionEntity connection;
  final ConnectionsState state;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final l10n = context.l10n;
    final health = healthOf(connection, state.invoices);
    final due = state.dueFor(connection.id);
    final invoice = state.nextPayableFor(connection.id);
    final ink = palette.onAccentSurface;

    return Container(
      color: palette.accentRamp[900],
      padding: const EdgeInsets.all(16),
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
                      l10n.amountDue,
                      color: palette.accentRamp[300],
                      trackingEm: 0.14,
                    ),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        due.toMoney(context),
                        style: AppFonts.heading(
                          size: 42,
                          color: ink,
                          height: 1,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 8),
              DsTag(
                label: health.label(l10n),
                fontSize: 10.5,
                background: health.background(palette),
                foreground: health.foreground(palette),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            invoice == null
                ? connection.packageName ?? ''
                : '${formatDayMonth(invoice.servicePeriodStart)} – '
                      '${formatDayMonthYear(invoice.servicePeriodEnd)}'
                      ' · ${connection.packageName ?? ''}',
            style: AppFonts.body(size: 12.5, color: palette.accentRamp[300]),
          ),
          const SizedBox(height: 14),
          DsButton(
            label: l10n.payNow,
            blueprint: true,
            block: true,
            minHeight: 50,
            fontSize: 15,
            background: ink,
            foreground: palette.accentRamp[900],
            borderColor: ink,
            onPressed: invoice == null
                ? null
                : () => context.navigateTo(const PayRoute()),
          ),
        ],
      ),
    );
  }
}

/// A one-line summary of the autopay mandate, tapping through to set it up.
class _AutopayRow extends StatelessWidget {
  const _AutopayRow();

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final l10n = context.l10n;

    return BlocBuilder<BillCubit, BillState>(
      builder: (context, state) {
        final autopay = state.autopay;
        final summary = state.isAutopayActive
            ? '${autopay!.connectionIds.length}'
                  '${l10n.lineS} · ${autopay.source?.name ?? ''}'
            : l10n.notSetUp;

        return BlueprintBox(
          background: palette.accentRamp[100],
          borderColor: palette.accentRamp[200],
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () => context.navigateTo(const AutopayRoute()),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 12,
                ),
                child: Row(
                  children: [
                    DsIcon(AppIcons.autopay, color: palette.accentRamp[700]),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            l10n.autopay,
                            style: AppFonts.heading(
                              size: 15,
                              color: palette.accentRamp[900],
                            ),
                          ),
                          Text(
                            summary,
                            style: AppFonts.body(
                              size: 12,
                              color: palette.neutralRamp[700],
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
          ),
        );
      },
    );
  }
}

class _PaymentHistoryTable extends StatelessWidget {
  const _PaymentHistoryTable({required this.payments});

  final List<PaymentEntity> payments;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final l10n = context.l10n;

    return Column(
      children: [
        // Header row, matching `.table thead`.
        Container(
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: palette.divider)),
          ),
          padding: const EdgeInsets.symmetric(vertical: 7),
          child: Row(
            children: [
              Expanded(flex: 3, child: _HeaderCell(l10n.date)),
              Expanded(flex: 3, child: _HeaderCell(l10n.channel)),
              Expanded(
                flex: 3,
                child: _HeaderCell(l10n.amount, align: TextAlign.right),
              ),
              const SizedBox(width: 42),
            ],
          ),
        ),
        for (final payment in payments)
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: palette.text.withValues(alpha: 0.08)),
              ),
            ),
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Text(
                    formatDayMonthYear(payment.paidAt),
                    style: AppFonts.body(size: 13, color: palette.text),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Text(
                    payment.method ?? '',
                    style: AppFonts.body(
                      size: 13,
                      color: palette.neutralRamp[700],
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Text(
                    payment.amount.toMoney(context),
                    textAlign: TextAlign.right,
                    style: AppFonts.body(size: 13, color: palette.text),
                  ),
                ),
                SizedBox(
                  width: 42,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      l10n.pdfLabel,
                      style: AppFonts.body(
                        size: 12,
                        color: palette.accentRamp[700],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}

class _HeaderCell extends StatelessWidget {
  const _HeaderCell(this.label, {this.align = TextAlign.left});

  final String label;
  final TextAlign align;

  @override
  Widget build(BuildContext context) => Text(
    label.toUpperCase(),
    textAlign: align,
    style: AppFonts.body(
      size: 11,
      color: context.palette.text.withValues(alpha: 0.6),
      letterSpacing: 11 * 0.08,
    ),
  );
}
