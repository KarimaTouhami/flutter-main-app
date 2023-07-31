import 'dart:async';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    Timer(const Duration(seconds: 2), () {
      Get.offNamed('/SplashScreen');
    });
  }
}