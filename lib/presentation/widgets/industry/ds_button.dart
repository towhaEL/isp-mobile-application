import 'package:flutter/material.dart';
import 'package:isp_selfcare/presentation/theme/base/theme_extension.dart';
import 'package:isp_selfcare/presentation/widgets/industry/blueprint_box.dart';

/// Which of the design system's `.btn-*` modifiers to paint.
enum DsButtonVariant {
  /// `.btn-primary` — accent fill, background-coloured label.
  primary,

  /// `.btn-secondary` — transparent with a hairline border.
  secondary,

  /// `.btn-ghost` — accent label, no border.
  ghost,

  /// `.btn` with no modifier: transparent, hairline border, text-coloured.
  plain,
}

/// The design system's `.btn`.
///
/// Square by construction (`.btn { border-radius: 0 }`), Barlow Condensed 600,
/// and — when [blueprint] is set — wrapped in the same registration marks the
/// prototype puts on its primary calls to action.
class DsButton extends StatelessWidget {
  const DsButton({
    required this.label,
    super.key,
    this.onPressed,
    this.variant = DsButtonVariant.plain,
    this.blueprint = false,
    this.block = false,
    this.minHeight = 36,
    this.fontSize = 14,
    this.background,
    this.foreground,
    this.borderColor,
    this.leading,
    this.trailing,
    this.padding,
  });

  final String label;
  final VoidCallback? onPressed;
  final DsButtonVariant variant;

  /// Draw the `.blueprint` corner marks over the button.
  final bool blueprint;

  /// `.btn-block` — fill the available width.
  final bool block;

  final double minHeight;
  final double fontSize;

  /// Per-call overrides; the prototype recolours buttons inline in a few
  /// places (the light-on-dark "Pay now", the disabled "Current plan").
  final Color? background;
  final Color? foreground;
  final Color? borderColor;

  final Widget? leading;
  final Widget? trailing;
  final EdgeInsetsGeometry? padding;

  bool get _enabled => onPressed != null;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;

    final (Color bg, Color fg, Color border) = switch (variant) {
      DsButtonVariant.primary => (palette.accent, palette.bg, palette.accent),
      DsButtonVariant.secondary => (
        Colors.transparent,
        palette.text,
        palette.divider,
      ),
      DsButtonVariant.ghost => (
        Colors.transparent,
        palette.accent,
        Colors.transparent,
      ),
      DsButtonVariant.plain => (
        Colors.transparent,
        palette.text,
        palette.divider,
      ),
    };

    final resolvedBg = background ?? bg;
    final resolvedFg = foreground ?? fg;
    final resolvedBorder = borderColor ?? border;

    final content = Row(
      mainAxisSize: block ? MainAxisSize.max : MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (leading != null) ...[leading!, const SizedBox(width: 6)],
        Flexible(
          child: Text(
            label,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: AppFonts.heading(
              size: fontSize,
              color: resolvedFg,
              height: 1.2,
            ),
          ),
        ),
        if (trailing != null) ...[const SizedBox(width: 6), trailing!],
      ],
    );

    final surface = Material(
      color: resolvedBg,
      child: InkWell(
        onTap: onPressed,
        // `.btn-secondary:hover` etc. tint with the ink colour; on touch the
        // pressed state is the only one that shows, so map it to :active.
        splashColor: resolvedFg.withValues(alpha: 0.12),
        highlightColor: resolvedFg.withValues(alpha: 0.08),
        child: Container(
          constraints: BoxConstraints(minHeight: minHeight),
          padding:
              padding ??
              EdgeInsets.symmetric(
                horizontal: variant == DsButtonVariant.ghost ? 3.4 : 12.24,
                vertical: 6.8,
              ),
          decoration: BoxDecoration(border: Border.all(color: resolvedBorder)),
          child: content,
        ),
      ),
    );

    final framed = blueprint
        ? Stack(
            clipBehavior: Clip.none,
            children: [
              surface,
              Positioned.fill(
                child: IgnorePointer(
                  child: BlueprintBox(
                    borderColor: Colors.transparent,
                    child: const SizedBox.expand(),
                  ),
                ),
              ),
            ],
          )
        : surface;

    // `.btn:disabled { opacity: 0.45 }`
    final result = Opacity(opacity: _enabled ? 1 : 0.45, child: framed);

    return block ? SizedBox(width: double.infinity, child: result) : result;
  }
}
