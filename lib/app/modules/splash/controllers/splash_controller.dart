import 'package:get/get.dart';

class SplashController extends GetxController {
  void loadView() async {
    await Future.delayed(const Duration(seconds: 2));
    Get.offAllNamed('/root');
  }
}
