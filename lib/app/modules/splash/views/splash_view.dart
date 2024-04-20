import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_player/app/common/extension/size_extensions.dart';
import 'package:music_player/app/common/values/images.dart';
import 'package:music_player/app/modules/splash/controllers/splash_controller.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  final controller = Get.find<SplashController>();
  @override
  void initState() {
    controller.loadView();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          AssetsImages.logo,
          width: 30.0.wp,
        ),
      ),
    );
  }
}
