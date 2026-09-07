import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:isp_selfcare/l10n/l10n.dart';
import 'package:isp_selfcare/presentation/route/app_router.gr.dart';
import 'package:isp_selfcare/presentation/theme/base/theme_extension.dart';
import 'package:isp_selfcare/presentation/widgets/industry/industry.dart';

/// Confirmation that the plan change was accepted.
///
/// "Queued", not "done": provisioning is a two-system write and the new speed
/// lands minutes later. Saying so is what stops the customer running a speed
/// test straight away and opening a ticket about it.
@RoutePage()
class PlanQueuedScreen extends StatelessWidget {
  const PlanQueuedScreen({required this.planName, super.key});

  final String planName;

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
                l10n.planQueued,
                textAlign: TextAlign.center,
                style: AppFonts.heading(size: 26, color: ink, height: 1.1),
              ),
              const SizedBox(height: 6),
              Text(
                '$planName — ${l10n.proRataNote}',
                textAlign: TextAlign.center,
                style: AppFonts.body(size: 13, color: palette.accentRamp[300]),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 18, 16, 0),
          child: DsButton(
            label: l10n.done,
            variant: DsButtonVariant.primary,
            blueprint: true,
            block: true,
            minHeight: 50,
            onPressed: () => context.navigateTo(const HomeRoute()),
          ),
        ),
      ],
    );
  }
}
