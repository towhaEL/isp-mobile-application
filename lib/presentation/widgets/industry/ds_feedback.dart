import 'package:flutter/material.dart';
import 'package:isp_selfcare/l10n/l10n.dart';
import 'package:isp_selfcare/presentation/theme/base/theme_extension.dart';
import 'package:isp_selfcare/presentation/widgets/industry/blueprint_box.dart';
import 'package:isp_selfcare/presentation/widgets/industry/ds_button.dart';
import 'package:isp_selfcare/presentation/widgets/industry/ds_icon.dart';

/// The confirmation strip the prototype floats above the bottom navigation
/// after a change lands ("Network updated", "Device blocked on this network").
///
/// It is a dark bar with a check mark, not a Material snackbar — square
/// corners, no elevation, and it sits clear of the nav rather than on top of
/// it, so the tab the customer just used stays visible.
void showDsToast(BuildContext context, String message) {
  final palette = context.palette;

  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        duration: const Duration(milliseconds: 2600),
        behavior: SnackBarBehavior.floating,
        elevation: 0,
        shape: const RoundedRectangleBorder(),
        backgroundColor: palette.accentRamp[900],
        // Clears the 58px nav bar plus the design's 16px gutter.
        margin: const EdgeInsets.fromLTRB(16, 0, 16, 74),
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
        content: Row(
          children: [
            DsIcon(AppIcons.check, size: 18, color: palette.accentRamp[300]),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                message,
                style: AppFonts.body(size: 13, color: palette.onAccentSurface),
              ),
            ),
          ],
        ),
      ),
    );
}

/// The prototype's confirm dialog — used for anything that interrupts service,
/// such as restarting the router.
///
/// Returns true when the customer confirms.
Future<bool> showDsConfirmDialog(
  BuildContext context, {
  required String title,
  required String body,
  required String confirmLabel,
}) async {
  final palette = context.palette;

  final result = await showDialog<bool>(
    context: context,
    barrierColor: palette.accentRamp[900].withValues(alpha: 0.6),
    builder: (dialogContext) => Dialog(
      backgroundColor: Colors.transparent,
      elevation: 0,
      insetPadding: const EdgeInsets.all(20),
      child: BlueprintBox(
        background: palette.bg,
        borderColor: palette.accentRamp[300],
        padding: const EdgeInsets.all(13.6),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: AppFonts.heading(size: 20, color: palette.text)),
            const SizedBox(height: 10.2),
            Text(
              body,
              style: AppFonts.body(
                size: 14,
                color: palette.text.withValues(alpha: 0.85),
              ),
            ),
            const SizedBox(height: 13.6),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                DsButton(
                  label: dialogContext.l10n.cancel,
                  variant: DsButtonVariant.secondary,
                  minHeight: 46,
                  onPressed: () => Navigator.of(dialogContext).pop(false),
                ),
                const SizedBox(width: 6.8),
                DsButton(
                  label: confirmLabel,
                  variant: DsButtonVariant.primary,
                  blueprint: true,
                  minHeight: 46,
                  onPressed: () => Navigator.of(dialogContext).pop(true),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );

  return result ?? false;
}

/// The centred empty state the design repeats across notifications, tickets and
/// invites: a muted line icon, a heading and a sentence explaining what will
/// eventually appear here.
class DsEmptyState extends StatelessWidget {
  const DsEmptyState({
    required this.iconPath,
    required this.title,
    required this.body,
    super.key,
    this.padding = const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
  });

  final String iconPath;
  final String title;
  final String body;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    return Padding(
      padding: padding,
      child: Column(
        children: [
          DsIcon(iconPath, size: 42, color: palette.neutralRamp[400]),
          const SizedBox(height: 13),
          Text(
            title,
            textAlign: TextAlign.center,
            style: AppFonts.heading(size: 18, color: palette.neutralRamp[700]),
          ),
          const SizedBox(height: 6),
          Text(
            body,
            textAlign: TextAlign.center,
            style: AppFonts.body(size: 13, color: palette.neutralRamp[600]),
          ),
        ],
      ),
    );
  }
}

/// A full-bleed loading state that matches the system's restraint: a hairline
/// progress indicator rather than a spinning Material circle.
class DsLoading extends StatelessWidget {
  const DsLoading({super.key, this.height = 160});

  final double height;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    return SizedBox(
      height: height,
      child: Center(
        child: SizedBox(
          width: 120,
          height: 2,
          child: LinearProgressIndicator(
            backgroundColor: palette.accentRamp[200],
            color: palette.accent,
            minHeight: 2,
          ),
        ),
      ),
    );
  }
}
