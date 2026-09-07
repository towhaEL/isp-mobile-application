import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:isp_selfcare/presentation/theme/base/theme_extension.dart';
import 'package:isp_selfcare/presentation/widgets/industry/blueprint_box.dart';

/// `.tag` — a small, square, filled label.
class DsTag extends StatelessWidget {
  const DsTag({
    required this.label,
    super.key,
    this.background,
    this.foreground,
    this.borderColor,
    this.fontSize = 11,
    this.uppercase = true,
    this.letterSpacingEm = 0.02,
  });

  /// `.tag-outline` — accent hairline, no fill.
  const DsTag.outline({
    required this.label,
    super.key,
    this.fontSize = 10,
    this.uppercase = true,
    this.letterSpacingEm = 0.02,
  }) : background = Colors.transparent,
       foreground = null,
       borderColor = null;

  final String label;
  final Color? background;
  final Color? foreground;
  final Color? borderColor;
  final double fontSize;
  final bool uppercase;
  final double letterSpacingEm;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final isOutline = background == Colors.transparent && foreground == null;
    final fg = foreground ?? (isOutline ? palette.accent : palette.text);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
      decoration: BoxDecoration(
        color: background ?? palette.accentRamp[100],
        border: isOutline || borderColor != null
            ? Border.all(color: borderColor ?? palette.accent)
            : null,
      ),
      child: Text(
        uppercase ? label.toUpperCase() : label,
        style: AppFonts.body(
          size: fontSize,
          color: fg,
          weight: FontWeight.w500,
          letterSpacing: fontSize * letterSpacingEm,
          height: 1.2,
        ),
      ),
    );
  }
}

/// The recurring section heading: tiny, wide-tracked, upper-case.
///
/// It appears above almost every block in the prototype
/// (`{{ t.allConnections }}`, `{{ t.wallet }}`, `{{ t.paymentHistory }}` …).
class DsKicker extends StatelessWidget {
  const DsKicker(
    this.label, {
    super.key,
    this.color,
    this.fontSize = 10.5,
    this.trackingEm = 0.16,
  });

  final String label;
  final Color? color;
  final double fontSize;
  final double trackingEm;

  @override
  Widget build(BuildContext context) => Text(
    label.toUpperCase(),
    style: AppFonts.kicker(
      size: fontSize,
      color: color ?? context.palette.neutralRamp[600],
      trackingEm: trackingEm,
    ),
  );
}

/// `.field` — a label above an `.input`.
class DsField extends StatelessWidget {
  const DsField({required this.label, required this.child, super.key});

  final String label;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: AppFonts.body(
            size: 12,
            // `color-mix(in srgb, var(--color-text) 70%, transparent)`
            color: palette.text.withValues(alpha: 0.7),
          ),
        ),
        const SizedBox(height: 5),
        child,
      ],
    );
  }
}

/// `.input` — square, surface-filled, hairline-bordered.
class DsInput extends StatelessWidget {
  const DsInput({
    super.key,
    this.controller,
    this.hintText,
    this.obscureText = false,
    this.keyboardType,
    this.inputFormatters,
    this.onChanged,
    this.maxLines = 1,
    this.minLines,
    this.textAlign = TextAlign.start,
    this.letterSpacing,
    this.fontSize = 14,
    this.enabled = true,
  });

  /// `textarea.input { min-height: 90px }`
  const DsInput.multiline({
    super.key,
    this.controller,
    this.hintText,
    this.onChanged,
    this.enabled = true,
  }) : obscureText = false,
       keyboardType = TextInputType.multiline,
       inputFormatters = null,
       maxLines = 5,
       minLines = 4,
       textAlign = TextAlign.start,
       letterSpacing = null,
       fontSize = 14;

  final TextEditingController? controller;
  final String? hintText;
  final bool obscureText;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final ValueChanged<String>? onChanged;
  final int? maxLines;
  final int? minLines;
  final TextAlign textAlign;
  final double? letterSpacing;
  final double fontSize;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final style = AppFonts.body(
      size: fontSize,
      color: palette.text,
      letterSpacing: letterSpacing,
    );

    return TextField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      onChanged: onChanged,
      maxLines: obscureText ? 1 : maxLines,
      minLines: minLines,
      textAlign: textAlign,
      enabled: enabled,
      style: style,
      cursorColor: palette.accent,
      cursorWidth: 1.5,
      decoration: InputDecoration(
        isDense: true,
        filled: true,
        fillColor: palette.surface,
        hintText: hintText,
        hintStyle: style.copyWith(color: palette.neutralRamp[500]),
        contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 9),
        border: _border(palette.divider),
        enabledBorder: _border(palette.divider),
        focusedBorder: _border(palette.accent),
        disabledBorder: _border(palette.divider),
      ),
    );
  }

  OutlineInputBorder _border(Color color) => OutlineInputBorder(
    borderRadius: BorderRadius.zero,
    borderSide: BorderSide(color: color),
  );
}

/// `.tl-sw` — the prototype's square toggle: a 46×26 track with a 20×20 knob
/// that slides between 2px and 22px from the left.
class DsSwitch extends StatelessWidget {
  const DsSwitch({
    required this.value,
    required this.onChanged,
    super.key,
    this.semanticLabel,
  });

  final bool value;
  final ValueChanged<bool>? onChanged;
  final String? semanticLabel;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final on = value;

    return Semantics(
      label: semanticLabel,
      toggled: on,
      child: GestureDetector(
        onTap: onChanged == null ? null : () => onChanged!(!on),
        behavior: HitTestBehavior.opaque,
        child: Container(
          width: 46,
          height: 26,
          decoration: BoxDecoration(
            color: on ? palette.accentRamp[100] : Colors.transparent,
            border: Border.all(
              color: on ? palette.accent : palette.neutralRamp[400],
            ),
          ),
          child: Stack(
            children: [
              AnimatedPositioned(
                duration: const Duration(milliseconds: 120),
                curve: Curves.linear,
                top: 2,
                left: on ? 22 : 2,
                child: Container(
                  width: 20,
                  height: 20,
                  color: on ? palette.accent : palette.neutralRamp[400],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// `.seg` — a full-width segmented control with hairline separators.
class DsSegmented extends StatelessWidget {
  const DsSegmented({
    required this.labels,
    required this.selectedIndex,
    required this.onSelected,
    super.key,
    this.minHeight = 40,
  });

  final List<String> labels;
  final int selectedIndex;
  final ValueChanged<int> onSelected;
  final double minHeight;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: palette.accentRamp[300]),
      ),
      child: Row(
        children: [
          for (var i = 0; i < labels.length; i++)
            Expanded(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  border: i == 0
                      ? null
                      : Border(
                          left: BorderSide(color: palette.accentRamp[300]),
                        ),
                ),
                child: Material(
                  color: i == selectedIndex
                      ? palette.accent
                      : Colors.transparent,
                  child: InkWell(
                    onTap: () => onSelected(i),
                    child: Container(
                      constraints: BoxConstraints(minHeight: minHeight),
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: Text(
                        labels[i].toUpperCase(),
                        textAlign: TextAlign.center,
                        style: AppFonts.heading(
                          size: 13,
                          color: i == selectedIndex ? palette.bg : palette.text,
                          letterSpacing: 13 * 0.04,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

/// `.blueprint.tl-opt` — a selectable row with a square "radio" chip.
///
/// Used for payment methods, autopay sources and days, ticket issue types and
/// relocation areas: everywhere the prototype needs a single-choice list.
class DsOptionRow extends StatelessWidget {
  const DsOptionRow({
    required this.label,
    required this.selected,
    super.key,
    this.onTap,
    this.trailing,
    this.subtitle,
    this.minHeight = 50,
    this.labelIsHeading = false,
  });

  final String label;
  final bool selected;
  final VoidCallback? onTap;
  final Widget? trailing;
  final String? subtitle;
  final double minHeight;

  /// Some option lists set the label in the condensed heading face.
  final bool labelIsHeading;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;

    return BlueprintBox(
      background: selected ? palette.accentRamp[100] : Colors.transparent,
      borderColor: selected ? palette.accent : palette.divider,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Container(
            constraints: BoxConstraints(minHeight: minHeight),
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                // The square selection chip: an accent hairline that fills in
                // when chosen.
                Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    color: selected ? palette.accent : Colors.transparent,
                    border: Border.all(color: palette.accent, width: 1.5),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        label,
                        style: labelIsHeading
                            ? AppFonts.heading(size: 15, color: palette.text)
                            : AppFonts.body(size: 14, color: palette.text),
                      ),
                      if (subtitle != null)
                        Text(
                          subtitle!,
                          style: AppFonts.body(
                            size: 11.5,
                            color: palette.neutralRamp[600],
                          ),
                        ),
                    ],
                  ),
                ),
                if (trailing != null) ...[const SizedBox(width: 8), trailing!],
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// `.table` — key/value rows separated by hairlines.
///
/// The prototype uses this for receipts, plan specs, account details and the
/// points ledger; all of them are two columns with the value right-aligned.
class DsKeyValueTable extends StatelessWidget {
  const DsKeyValueTable({required this.rows, super.key, this.header});

  final List<DsKeyValueRow> rows;

  /// Optional column headings (`<thead>`), as in the payment history table.
  final List<String>? header;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    return Column(
      children: [
        if (header != null)
          Container(
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: palette.divider)),
            ),
            padding: const EdgeInsets.symmetric(vertical: 6.8),
            child: Row(
              children: [
                for (var i = 0; i < header!.length; i++)
                  Expanded(
                    flex: i == 0 ? 3 : 2,
                    child: Text(
                      header![i].toUpperCase(),
                      textAlign: i == 0 ? TextAlign.left : TextAlign.right,
                      style: AppFonts.body(
                        size: 11,
                        color: palette.text.withValues(alpha: 0.6),
                        letterSpacing: 11 * 0.08,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        for (final row in rows)
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: palette.text.withValues(alpha: 0.08)),
              ),
            ),
            padding: const EdgeInsets.symmetric(vertical: 6.8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        row.label,
                        style: AppFonts.body(
                          size: 12.5,
                          color: row.labelColor ?? palette.neutralRamp[600],
                        ),
                      ),
                      if (row.sublabel != null)
                        Text(
                          row.sublabel!,
                          style: AppFonts.body(
                            size: 11,
                            color: palette.neutralRamp[600],
                          ),
                        ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    row.value,
                    textAlign: TextAlign.right,
                    style: row.emphasised
                        ? AppFonts.heading(
                            size: 14,
                            color: row.valueColor ?? palette.text,
                          )
                        : AppFonts.body(
                            size: 13,
                            color: row.valueColor ?? palette.text,
                          ),
                  ),
                ),
                if (row.trailing != null) ...[
                  const SizedBox(width: 8),
                  row.trailing!,
                ],
              ],
            ),
          ),
      ],
    );
  }
}

@immutable
class DsKeyValueRow {
  const DsKeyValueRow({
    required this.label,
    required this.value,
    this.sublabel,
    this.emphasised = false,
    this.labelColor,
    this.valueColor,
    this.trailing,
  });

  final String label;
  final String value;
  final String? sublabel;

  /// Renders the value in the condensed heading face — the prototype uses this
  /// for the "Due today" line of a pro-rata breakdown.
  final bool emphasised;

  final Color? labelColor;
  final Color? valueColor;
  final Widget? trailing;
}
