import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isp_selfcare/core/extensions/money_extension.dart';
import 'package:isp_selfcare/core/injector/injector.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';
import 'package:isp_selfcare/l10n/l10n.dart';
import 'package:isp_selfcare/presentation/route/app_router.gr.dart';
import 'package:isp_selfcare/presentation/screen/dashboard/cubit/connections_cubit.dart';
import 'package:isp_selfcare/presentation/screen/pay/cubit/pay_cubit.dart';
import 'package:isp_selfcare/presentation/theme/base/theme_extension.dart';
import 'package:isp_selfcare/presentation/widgets/industry/industry.dart';

/// Choose a wallet or card and settle the line's oldest open invoice.
@RoutePage()
class PayScreen extends StatelessWidget {
  const PayScreen({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider<PayCubit>(
    create: (_) => injector<PayCubit>()..load(),
    child: const _PayView(),
  );
}

class _PayView extends StatelessWidget {
  const _PayView();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final connections = context.watch<ConnectionsCubit>().state;
    final connection = connections.selected;
    final invoice = connection == null
        ? null
        : connections.nextPayableFor(connection.id);

    if (connection == null || invoice == null) {
      return DsEmptyState(
        iconPath: AppIcons.bill,
        title: l10n.paymentReceived,
        body: l10n.paidThroughThisCycleNothing,
      );
    }

    return BlocBuilder<PayCubit, PayState>(
      builder: (context, state) {
        if (state.status.isLoading || state.status.initial) {
          return const DsLoading(height: 320);
        }

        return ListView(
          padding: const EdgeInsets.all(16),
          children: [
            _PayingPanel(connection: connection, amount: invoice.dueAmount),
            const SizedBox(height: 18),
            DsKicker(l10n.wallet),
            const SizedBox(height: 8),
            _MethodList(methods: state.wallets, state: state),
            const SizedBox(height: 18),
            DsKicker(l10n.card),
            const SizedBox(height: 8),
            _MethodList(methods: state.cards, state: state),
            const SizedBox(height: 22),
            DsButton(
              label: state.selectedMethod == null
                  ? l10n.chooseAPaymentMethod
                  : '${l10n.payWith}${state.selectedMethod!.name}',
              variant: DsButtonVariant.primary,
              blueprint: true,
              block: true,
              minHeight: 54,
              fontSize: 15,
              onPressed: state.canPay
                  ? () => _confirm(context, invoice.id)
                  : null,
            ),
            const SizedBox(height: 10),
            Text(
              l10n.payNote,
              style: AppFonts.body(
                size: 11.5,
                color: context.palette.neutralRamp[600],
              ),
            ),
          ],
        );
      },
    );
  }

  Future<void> _confirm(BuildContext context, int invoiceId) async {
    final receipt = await context.read<PayCubit>().pay(invoiceId: invoiceId);
    if (!context.mounted || receipt == null) return;

    // The bill and the home summary both key off the invoice list, so refresh
    // it before leaving — otherwise the customer lands on the receipt and then
    // walks back to a screen still claiming they owe money.
    await context.read<ConnectionsCubit>().refreshBilling();
    if (!context.mounted) return;
    await context.router.push(ReceiptRoute(receipt: receipt));
  }
}

/// The summary of what is about to be charged.
class _PayingPanel extends StatelessWidget {
  const _PayingPanel({required this.connection, required this.amount});

  final ConnectionEntity connection;
  final double amount;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final l10n = context.l10n;

    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: palette.accentRamp[100],
        border: Border.all(color: palette.accentRamp[200]),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DsKicker(
            l10n.paying,
            color: palette.accentRamp[700],
            trackingEm: 0.12,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              amount.toMoney(context),
              style: AppFonts.heading(
                size: 36,
                color: palette.accentRamp[900],
                height: 1.05,
              ),
            ),
          ),
          Text(
            '${connection.displayName} · ${connection.code} · '
            '${connection.packageName ?? ''}',
            style: AppFonts.body(size: 12.5, color: palette.neutralRamp[700]),
          ),
        ],
      ),
    );
  }
}

class _MethodList extends StatelessWidget {
  const _MethodList({required this.methods, required this.state});

  final List<PaymentMethodEntity> methods;
  final PayState state;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;

    return Column(
      children: [
        for (var i = 0; i < methods.length; i++) ...[
          if (i > 0) const SizedBox(height: 8),
          DsOptionRow(
            label: methods[i].name,
            labelIsHeading: true,
            selected: state.selectedMethodId == methods[i].id,
            minHeight: 54,
            onTap: () => context.read<PayCubit>().selectMethod(methods[i].id),
            // The design reserves a card-logo slot; there is no artwork in the
            // prototype, so this is the same empty plate it draws.
            trailing: Container(
              width: 44,
              height: 26,
              decoration: BoxDecoration(
                color: palette.accentRamp[100],
                border: Border.all(color: palette.accentRamp[200]),
              ),
              alignment: Alignment.center,
              child: methods[i].maskedAccount == null
                  ? null
                  : Text(
                      methods[i].maskedAccount!.split(' ').last,
                      style: AppFonts.body(
                        size: 9,
                        color: palette.accentRamp[700],
                      ),
                    ),
            ),
          ),
        ],
      ],
    );
  }
}
