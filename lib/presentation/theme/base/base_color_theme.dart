import 'package:flutter/material.dart';

import 'package:isp_selfcare/presentation/theme/base/app_colors.dart';

abstract class BaseColorTheme {
  AppColors get getAppColors;

  ThemeData getTheme();
}
