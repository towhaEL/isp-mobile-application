import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isp_selfcare/presentation/theme/base/app_colors.dart';
import 'package:isp_selfcare/presentation/theme/base/app_palette.dart';
import 'package:isp_selfcare/presentation/theme/base/app_text_theme.dart';

extension ThemeContext on BuildContext {
  ThemeData get appThemeData => Theme.of(this);

  AppTextTheme get textStyle => appThemeData.extension<AppTextTheme>()!;

  AppColors get colors => appThemeData.extension<AppColors>()!;

  /// The Industry design-system tonal tokens — ramps, ground and divider.
  AppPalette get palette => appThemeData.extension<AppPalette>()!;
}

/// The system's two families, in the two roles it uses them for.
///
/// Headings are Barlow Condensed at 600 — the condensed face is what gives the
/// screens their engineering-drawing feel, and substituting the body face for
/// it loses the design entirely. Body copy is Barlow at 400/500.
abstract class AppFonts {
  const AppFonts._();

  /// `--font-heading` / `--font-heading-weight`.
  static TextStyle heading({
    required double size,
    Color? color,
    double? height,
    double? letterSpacing,
    FontWeight weight = FontWeight.w600,
  }) => GoogleFonts.barlowCondensed(
    fontSize: size,
    fontWeight: weight,
    color: color,
    height: height,
    letterSpacing: letterSpacing,
  );

  /// `--font-body`.
  static TextStyle body({
    required double size,
    Color? color,
    double? height,
    double? letterSpacing,
    FontWeight weight = FontWeight.w400,
    TextDecoration? decoration,
  }) => GoogleFonts.barlow(
    fontSize: size,
    fontWeight: weight,
    color: color,
    height: height,
    letterSpacing: letterSpacing,
    decoration: decoration,
  );

  /// The design's recurring "kicker": tiny, wide-tracked, upper-case labels
  /// that head almost every section. Tracking is expressed in the CSS as an
  /// em fraction, so it scales with [size] here too.
  static TextStyle kicker({
    double size = 10.5,
    Color? color,
    double trackingEm = 0.16,
  }) => GoogleFonts.barlow(
    fontSize: size,
    fontWeight: FontWeight.w500,
    color: color,
    letterSpacing: size * trackingEm,
  );
}
