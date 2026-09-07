import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isp_selfcare/presentation/theme/base/app_colors.dart';
import 'package:isp_selfcare/presentation/theme/base/app_palette.dart';
import 'package:isp_selfcare/presentation/theme/base/base_color_theme.dart';

/// Light theme, transcribed from the Industry design system.
///
/// The design is a light-first "blueprint" system: an off-white ground, square
/// corners everywhere, hairline dividers and a single blue-grey accent ramp
/// doing all the work. The semantic roles below map onto that ramp; the ramp
/// itself travels on [AppPalette].
class LightColorTheme extends BaseColorTheme {
  @override
  ThemeData getTheme() {
    final appColors = getAppColors;
    final palette = AppPalette.light();
    final colorScheme = appColors.getColorScheme(Brightness.light);

    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: appColors.background,
      colorScheme: colorScheme,
      extensions: [appColors, palette],
      // The system draws no rounded corners anywhere — squaring these off in
      // the theme keeps every Material default from reintroducing a radius.
      cardTheme: const CardThemeData(
        shape: RoundedRectangleBorder(),
        elevation: 0,
      ),
      dialogTheme: const DialogThemeData(shape: RoundedRectangleBorder()),
      bottomSheetTheme: const BottomSheetThemeData(
        shape: RoundedRectangleBorder(),
      ),
      dividerTheme: DividerThemeData(
        color: palette.divider,
        thickness: 1,
        space: 1,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: palette.bg,
        selectedItemColor: palette.accentRamp[900],
        unselectedItemColor: palette.neutralRamp[600],
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
        type: BottomNavigationBarType.fixed,
      ),
      textTheme: GoogleFonts.barlowTextTheme(
        ThemeData(brightness: Brightness.light).textTheme,
      ),
    );
  }

  @override
  AppColors get getAppColors => AppColors(
    primary: primary,
    onPrimary: onPrimary,
    secondary: secondary,
    onSecondary: onSecondary,
    background: background,
    onBackground: onBackground,
    surface: surface,
    onSurface: onSurface,
    error: error,
    onError: onError,
    success: success,
    warning: warning,
    info: info,
    premium: premium,
    border: border,
    shadow: shadow,
    disabled: disabled,
    surfaceElevated: surfaceElevated,
  );

  // Brand — `--color-accent` and `--color-accent-2`.
  Color get primary => const Color(0xFF5980A6);

  /// `.btn-primary` paints its label `var(--color-bg)`, not white.
  Color get onPrimary => const Color(0xFFF2F2F3);

  Color get secondary => const Color(0xFF728FAB);

  Color get onSecondary => const Color(0xFFF2F2F3);

  // Ground — `--color-bg` / `--color-surface` / `--color-text`.
  Color get background => const Color(0xFFF2F2F3);

  Color get onBackground => const Color(0xFF1D1F20);

  Color get surface => const Color(0xFFE9E9EA);

  Color get onSurface => const Color(0xFF1D1F20);

  // Status. The design expresses trouble with the accent ramp rather than a
  // red — the login error banner is accent-100 behind accent-800 text — so
  // these stay muted enough to sit inside the same palette.
  Color get error => const Color(0xFF9E4A46);

  Color get onError => const Color(0xFFF2F2F3);

  Color get success => const Color(0xFF4A7C59);

  Color get warning => const Color(0xFFB08349);

  Color get info => const Color(0xFF5980A6);

  Color get premium => const Color(0xFF416180);

  // Utility — `--color-divider` is the text colour at 16%.
  Color get border => const Color(0x291D1F20);

  Color get shadow => const Color(0x242B2B2D);

  Color get disabled => const Color(0xFFB7B7BA);

  Color get surfaceElevated => const Color(0xFFF5F5F8);
}
