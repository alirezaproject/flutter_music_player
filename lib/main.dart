import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:music_player/app/common/theme/app_theme.dart';

import 'app/common/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Music Player",
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      themeMode: ThemeMode.dark,
      darkTheme: AppTheme.darkTheme,
    ),
  );
}
