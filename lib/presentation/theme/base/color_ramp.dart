import 'package:flutter/material.dart';

/// A nine-step tonal ramp, 100 (lightest) through 900 (darkest).
///
/// The design system generates every ramp in OKLCH on one shared lightness
/// scale, so step 300 of any ramp matches step 300 of every other in visual
/// value. Modelling that as a type rather than eighteen loose fields keeps
/// [AppPalette]'s `lerp` and `copyWith` from drowning in boilerplate — and
/// keeps a ramp from silently losing a shade.
@immutable
class ColorRamp {
  const ColorRamp({
    required this.s100,
    required this.s200,
    required this.s300,
    required this.s400,
    required this.s500,
    required this.s600,
    required this.s700,
    required this.s800,
    required this.s900,
  });

  final Color s100;
  final Color s200;
  final Color s300;
  final Color s400;
  final Color s500;
  final Color s600;
  final Color s700;
  final Color s800;
  final Color s900;

  /// Index by the design-token step (100–900) so call sites can read the same
  /// number the CSS does. Throws on an unknown step rather than guessing.
  Color operator [](int step) => switch (step) {
    100 => s100,
    200 => s200,
    300 => s300,
    400 => s400,
    500 => s500,
    600 => s600,
    700 => s700,
    800 => s800,
    900 => s900,
    _ => throw ArgumentError.value(step, 'step', 'Not a ramp step (100–900)'),
  };

  static ColorRamp lerp(ColorRamp a, ColorRamp b, double t) => ColorRamp(
    s100: Color.lerp(a.s100, b.s100, t)!,
    s200: Color.lerp(a.s200, b.s200, t)!,
    s300: Color.lerp(a.s300, b.s300, t)!,
    s400: Color.lerp(a.s400, b.s400, t)!,
    s500: Color.lerp(a.s500, b.s500, t)!,
    s600: Color.lerp(a.s600, b.s600, t)!,
    s700: Color.lerp(a.s700, b.s700, t)!,
    s800: Color.lerp(a.s800, b.s800, t)!,
    s900: Color.lerp(a.s900, b.s900, t)!,
  );

  /// The ramp reversed, so a dark theme can reuse the same nine values with
  /// lightness running the other way.
  ColorRamp get reversed => ColorRamp(
    s100: s900,
    s200: s800,
    s300: s700,
    s400: s600,
    s500: s500,
    s600: s400,
    s700: s300,
    s800: s200,
    s900: s100,
  );
}
