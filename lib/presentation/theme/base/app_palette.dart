import 'package:flutter/material.dart';
import 'package:isp_selfcare/presentation/theme/base/color_ramp.dart';

/// The "Industry" design-system tokens, carried on the theme so widgets read
/// them the way the prototype's CSS reads custom properties.
///
/// [AppColors] stays the semantic layer (primary / error / success …). This is
/// the *tonal* layer: the design leans on specific ramp steps by number —
/// `accent-900` for the dark chrome, `accent-100` for selected rows,
/// `neutral-600` for secondary text — and flattening those into semantic roles
/// would lose the distinctions the screens actually depend on.
@immutable
class AppPalette extends ThemeExtension<AppPalette> {
  const AppPalette({
    required this.bg,
    required this.surface,
    required this.text,
    required this.accent,
    required this.accent2,
    required this.divider,
    required this.onAccentSurface,
    required this.accentRamp,
    required this.accent2Ramp,
    required this.neutralRamp,
  });

  /// The light theme, transcribed from `_ds/…/styles.css`.
  factory AppPalette.light() => const AppPalette(
    bg: Color(0xFFF2F2F3),
    surface: Color(0xFFE9E9EA),
    text: Color(0xFF1D1F20),
    accent: Color(0xFF5980A6),
    accent2: Color(0xFF728FAB),
    // `color-mix(in srgb, #1d1f20 16%, transparent)`.
    divider: Color(0x291D1F20),
    // The ink the design puts on every accent-900 panel. Not pure white — it
    // is the background colour reused as foreground, which is what keeps the
    // dark chrome from glaring.
    onAccentSurface: Color(0xFFF2F2F3),
    accentRamp: _accent,
    accent2Ramp: _accent2,
    neutralRamp: _neutral,
  );

  /// A dark counterpart. The design only specifies light, so this inverts the
  /// ground and reverses the neutral ramp while leaving the accent hues where
  /// they are — reversing those too would turn the brand blue into cream.
  factory AppPalette.dark() => const AppPalette(
    bg: Color(0xFF16181A),
    surface: Color(0xFF1D2023),
    text: Color(0xFFF2F2F3),
    accent: Color(0xFF94BCE3),
    accent2: Color(0xFF9EBBD8),
    divider: Color(0x29F2F2F3),
    onAccentSurface: Color(0xFFF2F2F3),
    accentRamp: _accentDark,
    accent2Ramp: _accent2Dark,
    neutralRamp: _neutralDark,
  );

  final Color bg;
  final Color surface;
  final Color text;
  final Color accent;
  final Color accent2;
  final Color divider;

  /// Foreground for panels painted [accentRamp]`[900]` / `[800]`.
  final Color onAccentSurface;

  final ColorRamp accentRamp;
  final ColorRamp accent2Ramp;
  final ColorRamp neutralRamp;

  static const ColorRamp _accent = ColorRamp(
    s100: Color(0xFFEEF6FF),
    s200: Color(0xFFD6EBFF),
    s300: Color(0xFFB5D9FD),
    s400: Color(0xFF94BCE3),
    s500: Color(0xFF749DC4),
    s600: Color(0xFF597EA3),
    s700: Color(0xFF416180),
    s800: Color(0xFF2C455D),
    s900: Color(0xFF1D2D3D),
  );

  static const ColorRamp _accent2 = ColorRamp(
    s100: Color(0xFFEEF6FF),
    s200: Color(0xFFD6EBFF),
    s300: Color(0xFFBDD8F2),
    s400: Color(0xFF9EBBD8),
    s500: Color(0xFF7E9CB8),
    s600: Color(0xFF627D98),
    s700: Color(0xFF486077),
    s800: Color(0xFF314457),
    s900: Color(0xFF1F2D3A),
  );

  static const ColorRamp _neutral = ColorRamp(
    s100: Color(0xFFF5F5F8),
    s200: Color(0xFFE7E7EA),
    s300: Color(0xFFD4D4D7),
    s400: Color(0xFFB7B7BA),
    s500: Color(0xFF98989B),
    s600: Color(0xFF7A7A7D),
    s700: Color(0xFF5D5D60),
    s800: Color(0xFF424244),
    s900: Color(0xFF2B2B2D),
  );

  // Dark variants: the neutrals flip end-for-end; the accents keep their hue
  // order but start from the mid-tones so text on dark ground stays legible.
  static const ColorRamp _neutralDark = ColorRamp(
    s100: Color(0xFF212123),
    s200: Color(0xFF2B2B2D),
    s300: Color(0xFF424244),
    s400: Color(0xFF5D5D60),
    s500: Color(0xFF7A7A7D),
    s600: Color(0xFF98989B),
    s700: Color(0xFFB7B7BA),
    s800: Color(0xFFD4D4D7),
    s900: Color(0xFFE7E7EA),
  );

  static const ColorRamp _accentDark = ColorRamp(
    s100: Color(0xFF1B2733),
    s200: Color(0xFF22323F),
    s300: Color(0xFF2C455D),
    s400: Color(0xFF416180),
    s500: Color(0xFF597EA3),
    s600: Color(0xFF749DC4),
    s700: Color(0xFF94BCE3),
    s800: Color(0xFFB5D9FD),
    s900: Color(0xFF11202C),
  );

  static const ColorRamp _accent2Dark = ColorRamp(
    s100: Color(0xFF1B2630),
    s200: Color(0xFF22303C),
    s300: Color(0xFF314457),
    s400: Color(0xFF486077),
    s500: Color(0xFF627D98),
    s600: Color(0xFF7E9CB8),
    s700: Color(0xFF9EBBD8),
    s800: Color(0xFFBDD8F2),
    s900: Color(0xFF131E28),
  );

  @override
  AppPalette copyWith({
    Color? bg,
    Color? surface,
    Color? text,
    Color? accent,
    Color? accent2,
    Color? divider,
    Color? onAccentSurface,
    ColorRamp? accentRamp,
    ColorRamp? accent2Ramp,
    ColorRamp? neutralRamp,
  }) => AppPalette(
    bg: bg ?? this.bg,
    surface: surface ?? this.surface,
    text: text ?? this.text,
    accent: accent ?? this.accent,
    accent2: accent2 ?? this.accent2,
    divider: divider ?? this.divider,
    onAccentSurface: onAccentSurface ?? this.onAccentSurface,
    accentRamp: accentRamp ?? this.accentRamp,
    accent2Ramp: accent2Ramp ?? this.accent2Ramp,
    neutralRamp: neutralRamp ?? this.neutralRamp,
  );

  @override
  ThemeExtension<AppPalette> lerp(
    covariant ThemeExtension<AppPalette>? other,
    double t,
  ) {
    if (other is! AppPalette) return this;
    return AppPalette(
      bg: Color.lerp(bg, other.bg, t)!,
      surface: Color.lerp(surface, other.surface, t)!,
      text: Color.lerp(text, other.text, t)!,
      accent: Color.lerp(accent, other.accent, t)!,
      accent2: Color.lerp(accent2, other.accent2, t)!,
      divider: Color.lerp(divider, other.divider, t)!,
      onAccentSurface: Color.lerp(onAccentSurface, other.onAccentSurface, t)!,
      accentRamp: ColorRamp.lerp(accentRamp, other.accentRamp, t),
      accent2Ramp: ColorRamp.lerp(accent2Ramp, other.accent2Ramp, t),
      neutralRamp: ColorRamp.lerp(neutralRamp, other.neutralRamp, t),
    );
  }
}
