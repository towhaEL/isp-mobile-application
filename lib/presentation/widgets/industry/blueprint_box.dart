import 'package:flutter/material.dart';
import 'package:isp_selfcare/presentation/theme/base/theme_extension.dart';

/// The design system's `.blueprint` frame: a square, hairline-bordered box with
/// four crosshair registration marks sitting *outside* its corners.
///
/// The marks are what make the system read as an engineering drawing rather
/// than a card UI, and because they overhang the border by 6px the box must not
/// be clipped by its parent — hence [Clip.none] here, and why callers should
/// leave ~6px of breathing room around a blueprint that sits flush to an edge.
class BlueprintBox extends StatelessWidget {
  const BlueprintBox({
    required this.child,
    super.key,
    this.padding,
    this.background,
    this.borderColor,
    this.showCorners = true,
    this.width,
    this.height,
    this.alignment,
  });

  final Widget child;
  final EdgeInsetsGeometry? padding;
  final Color? background;
  final Color? borderColor;

  /// The CSS class draws the marks unconditionally, but a handful of places in
  /// the prototype reuse the frame without them.
  final bool showCorners;

  final double? width;
  final double? height;
  final AlignmentGeometry? alignment;

  /// `.corner { width: 11px; height: 11px }`
  static const double _markSize = 11;

  /// `.corner.tl { top: -6px; left: -6px }`
  static const double _markOffset = -6;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;

    final box = Container(
      width: width,
      height: height,
      alignment: alignment,
      padding: padding,
      decoration: BoxDecoration(
        color: background,
        border: Border.all(color: borderColor ?? palette.divider),
      ),
      child: child,
    );

    if (!showCorners) return box;

    // `color-mix(in srgb, var(--color-text) 55%, transparent)`
    final mark = _RegistrationMark(color: palette.text.withValues(alpha: 0.55));

    return Stack(
      clipBehavior: Clip.none,
      children: [
        box,
        Positioned(top: _markOffset, left: _markOffset, child: mark),
        Positioned(top: _markOffset, right: _markOffset, child: mark),
        Positioned(bottom: _markOffset, left: _markOffset, child: mark),
        Positioned(bottom: _markOffset, right: _markOffset, child: mark),
      ],
    );
  }
}

/// One crosshair: a vertical hairline crossed by a horizontal one, offset so
/// the intersection sits just outside the frame's corner.
class _RegistrationMark extends StatelessWidget {
  const _RegistrationMark({required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    final ink = color;
    return SizedBox(
      width: BlueprintBox._markSize,
      height: BlueprintBox._markSize,
      child: Stack(
        children: [
          // `::before { left: 5px; top: 0; width: 1px; height: 100% }`
          Positioned(
            left: 5,
            top: 0,
            width: 1,
            height: BlueprintBox._markSize,
            child: ColoredBox(color: ink),
          ),
          // `::after { top: 5px; left: 0; width: 100%; height: 1px }`
          Positioned(
            left: 0,
            top: 5,
            width: BlueprintBox._markSize,
            height: 1,
            child: ColoredBox(color: ink),
          ),
        ],
      ),
    );
  }
}
