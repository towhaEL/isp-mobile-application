import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isp_selfcare/presentation/theme/base/app_colors.dart';
import 'package:isp_selfcare/presentation/theme/base/app_palette.dart';
import 'package:isp_selfcare/presentation/theme/base/base_color_theme.dart';

/// Dark counterpart to [LightColorTheme].
///
/// The Industry system only specifies a light theme, so this is a derivation
/// rather than a transcription: the ground inverts and the neutral ramp
/// reverses, while the accent keeps its hue and lifts to the lighter steps so
/// it still reads as the same brand blue against dark ink.
class DarkColorTheme extends BaseColorTheme {
  @override
  ThemeData getTheme() {
    final appColors = getAppColors;
    final palette = AppPalette.dark();
    final colorScheme = appColors.getColorScheme(Brightness.dark);

    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: appColors.background,
      colorScheme: colorScheme,
      extensions: [appColors, palette],
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
        selectedItemColor: palette.accent,
        unselectedItemColor: palette.neutralRamp[600],
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
        type: BottomNavigationBarType.fixed,
      ),
      textTheme: GoogleFonts.barlowTextTheme(
        ThemeData(brightness: Brightness.dark).textTheme,
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

  Color get primary => const Color(0xFF94BCE3);

  Color get onPrimary => const Color(0xFF11202C);

  Color get secondary => const Color(0xFF9EBBD8);

  Color get onSecondary => const Color(0xFF131E28);

  Color get background => const Color(0xFF16181A);

  Color get onBackground => const Color(0xFFF2F2F3);

  Color get surface => const Color(0xFF1D2023);

  Color get onSurface => const Color(0xFFF2F2F3);

  Color get error => const Color(0xFFE08C87);

  Color get onError => const Color(0xFF16181A);

  Color get success => const Color(0xFF8FBF9F);

  Color get warning => const Color(0xFFD9B27C);

  Color get info => const Color(0xFF94BCE3);

  Color get premium => const Color(0xFFB5D9FD);

  Color get border => const Color(0x29F2F2F3);

  Color get shadow => const Color(0x99000000);

  Color get disabled => const Color(0xFF5D5D60);

  Color get surfaceElevated => const Color(0xFF212123);
}
