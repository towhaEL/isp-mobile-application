import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:isp_selfcare/presentation/theme/base/theme_extension.dart';

/// Renders one of the design's line icons.
///
/// Every icon in the prototype is a single stroked path on a 24×24 viewBox with
/// no fill — `stroke-width: 1.5`, round-ish joins, drawn in the current colour.
/// Rather than hand-convert ~20 paths into `CustomPainter`s or ship a font, the
/// path data travels verbatim from the design (see [AppIcons]) and gets wrapped
/// in a minimal SVG document here. That keeps the icons literally identical to
/// the source and makes adding one a one-line change.
class DsIcon extends StatelessWidget {
  const DsIcon(
    this.path, {
    super.key,
    this.size = 20,
    this.color,
    this.strokeWidth = 1.5,
  });

  /// The `d` attribute of the design's `<path>`.
  final String path;

  final double size;
  final Color? color;
  final double strokeWidth;

  @override
  Widget build(BuildContext context) {
    final ink = color ?? context.palette.text;
    return SvgPicture.string(
      _document(path, ink, strokeWidth),
      width: size,
      height: size,
    );
  }

  static String _document(String path, Color color, double strokeWidth) {
    final hex = _hex(color);
    return '<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" '
        'viewBox="0 0 24 24" fill="none" stroke="$hex" '
        'stroke-width="$strokeWidth" stroke-linecap="round" '
        'stroke-linejoin="round" opacity="${_opacity(color)}">'
        '<path d="$path"/></svg>';
  }

  static String _hex(Color color) {
    final r = (color.r * 255).round().toRadixString(16).padLeft(2, '0');
    final g = (color.g * 255).round().toRadixString(16).padLeft(2, '0');
    final b = (color.b * 255).round().toRadixString(16).padLeft(2, '0');
    return '#$r$g$b';
  }

  static String _opacity(Color color) => color.a.toStringAsFixed(3);
}

/// The prototype's icon set, transcribed from its `icons` map.
abstract class AppIcons {
  const AppIcons._();

  static const String bill = 'M4 4h16v16l-3-2-3 2-3-2-3 2z';
  static const String pkg = 'M4 8h16M4 8 12 3l8 5v11H4z';
  static const String usage = 'M4 20V10M10 20V4M16 20v-8M22 20h-20';
  static const String support =
      'M4 12a8 8 0 0 1 16 0v5a3 3 0 0 1-3 3h-2M4 12v4a2 2 0 0 0 2 2h1v-6H6a2 '
      '2 0 0 0-2 2';
  static const String home = 'M4 11 12 4l8 7v9H4z';
  static const String offers = 'M4 4h9l7 7-9 9-7-7z';
  static const String rewards = 'M8 4h8v5a4 4 0 0 1-8 0zM12 13v4M8 21h8';
  static const String account =
      'M4 20a8 8 0 0 1 16 0M12 4a4 4 0 1 1 0 8 4 4 0 0 1 0-8';
  static const String wifi =
      'M2 8a16 16 0 0 1 20 0M5.5 12a11 11 0 0 1 13 0M9 16a6 6 0 0 1 6 0M12 '
      '20h.01';
  static const String speed = 'M12 20a8 8 0 1 1 8-8M12 12l5-3';
  static const String autopay = 'M20 12a8 8 0 1 1-3-6.2M20 4v5h-5';
  static const String referral =
      'M4 20a7 7 0 0 1 12-4M9 4a4 4 0 1 1 0 8 4 4 0 0 1 0-8M18 14v6M15 17h6';
  static const String settings =
      'M12 15a3 3 0 1 0 0-6 3 3 0 0 0 0 6M4 12h2M18 12h2M12 4v2M12 18v2M6.5 '
      '6.5 8 8M16 16l1.5 1.5M17.5 6.5 16 8M8 16l-1.5 1.5';
  static const String move =
      'M12 21s7-6.2 7-11a7 7 0 1 0-14 0c0 4.8 7 11 7 11M12 8a2.5 2.5 0 1 1 0 '
      '5 2.5 2.5 0 0 1 0-5';
  static const String phone =
      'M5 4h4l2 5-2 1a12 12 0 0 0 5 5l1-2 5 2v4h-4A16 '
      '16 0 0 1 5 8z';
  static const String mail = 'M3 6h18v12H3zM3 6l9 7 9-7';
  static const String chat = 'M4 5h16v10H9l-5 4z';
  static const String laptop = 'M4 5h16v10H4zM2 19h20';
  static const String mobile = 'M8 3h8v18H8zM11 18h2';
  static const String tv = 'M3 5h18v11H3zM9 20h6';
  static const String cam = 'M4 8h11v8H4zM15 11l5-3v8l-5-3';

  // Chrome and affordances used inline in the prototype's markup.
  static const String menu = 'M4 6h16M4 12h16M4 18h16';
  static const String bell =
      'M18 8a6 6 0 1 0-12 0c0 7-3 9-3 9h18s-3-2-3-9M13.7 21a2 2 0 0 1-3.4 0';
  static const String close = 'M6 6l12 12M18 6 6 18';
  static const String chevronRight = 'm9 6 6 6-6 6';
  static const String chevronDown = 'm6 9 6 6 6-6';
  static const String check = 'M4 12.5 9.5 18 20 6';
  static const String plus = 'M12 5v14M5 12h14';
  static const String send = 'M4 12h16M13 5l7 7-7 7';
  static const String warning =
      'M12 8v5M12 17h.01M10.3 4l-7 12a2 2 0 0 0 1.7 3h14a2 2 0 0 0 1.7-3l-7-12a'
      '2 2 0 0 0-3.4 0';
  static const String offline =
      'M2 2l20 20M8.5 16.5a5 5 0 0 1 7 0M5 13a10 10 0 0 1 4-2.5M19 13a10 10 0 '
      '0 0-7-3M12 20h.01';
  static const String peopleAdd =
      'M4 20a7 7 0 0 1 12-4M9 4a4 4 0 1 1 0 8 4 4 0 0 1 0-8M18 14v6M15 17h6';
}
