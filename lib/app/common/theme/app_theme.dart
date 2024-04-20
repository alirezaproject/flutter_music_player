import 'package:flutter/material.dart';
import 'package:music_player/app/common/values/color.dart';

class AppTheme {
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      dividerColor: AppColor.bg,
      scaffoldBackgroundColor: AppColor.bg,
      colorScheme: const ColorScheme.dark(surfaceVariant: Colors.transparent));
}
