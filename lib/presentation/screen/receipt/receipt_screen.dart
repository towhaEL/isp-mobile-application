import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:isp_selfcare/core/extensions/money_extension.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';
import 'package:isp_selfcare/l10n/l10n.dart';
import 'package:isp_selfcare/presentation/route/app_router.gr.dart';
import 'package:isp_selfcare/presentation/theme/base/theme_extension.dart';
import 'package:isp_selfcare/presentation/widgets/industry/industry.dart';
import 'package:isp_selfcare/presentation/widgets/util/date_format.dart';

/// Confirmation that money arrived, and what it bought.
///
/// The receipt is passed in rather than re-fetched: it is the response to the
/// payment the customer just made, and going back to the server for it would
/// risk showing nothing if that read failed after the money moved.
@RoutePage()
class ReceiptScreen extends StatelessWidget {
  const ReceiptScreen({required this.receipt, super.key});

  final PaymentReceiptEntity receipt;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final l10n = context.l10n;
    final ink = palette.onAccentSurface;

    return ListView(
      padding: const EdgeInsets.only(bottom: 24),
      children: [
        Container(
          width: double.infinity,
          color: palette.accentRamp[900],
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 28),
          child: Column(
            children: [
              DsIcon(AppIcons.check, size: 46, color: palette.accentRamp[300]),
              const SizedBox(height: 10),
              Text(
                l10n.paymentReceived,
                textAlign: TextAlign.center,
                style: AppFonts.heading(size: 28, color: ink, height: 1.1),
              ),
              if (receipt.serviceRunsTo != null) ...[
                const SizedBox(height: 4),
                Text(
                  l10n.serviceRunsToDate(
                    formatDayMonthYear(receipt.serviceRunsTo!),
                  ),
                  textAlign: TextAlign.center,
                  style: AppFonts.body(
                    size: 13,
                    color: palette.accentRamp[300],
                  ),
                ),
              ],
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 18, 16, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              DsKeyValueTable(
                rows: [
                  DsKeyValueRow(
                    label: l10n.titlePaid,
                    value: receipt.receiptNumber,
                  ),
                  DsKeyValueRow(
                    label: l10n.paid,
                    value: receipt.amount.toMoney(context),
                  ),
                  DsKeyValueRow(label: l10n.channel, value: receipt.channel),
                  DsKeyValueRow(
                    label: l10n.connection,
                    value: receipt.connectionLabel,
                  ),
                  DsKeyValueRow(
                    label: l10n.date,
                    value: formatNotificationTime(receipt.paidAt),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              DsButton(
                label: l10n.downloadReceipt,
                variant: DsButtonVariant.secondary,
                block: true,
                minHeight: 48,
                onPressed: () => showDsToast(context, l10n.downloadReceipt),
              ),
              const SizedBox(height: 8),
              DsButton(
                label: l10n.done,
                variant: DsButtonVariant.primary,
                blueprint: true,
                block: true,
                minHeight: 48,
                onPressed: () => context.navigateTo(const HomeRoute()),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
