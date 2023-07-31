import 'dart:async';
import 'package:ecommerce_ui_kit/config/asset_image_paths.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../config/routes/app_routes.dart';
import '../../util/size_config.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    splash();
  }

  Future splash() async {
    await Future.delayed(const Duration(milliseconds: 2000));
    Get.toNamed(AppRoutes.onboadingScreen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: SizedBox(
              height: height140,
              width: height140,
              child: Image.asset(AssetImagePaths.splash_logo)),
        )
      ]),
      Positioned(
          top: 40,
          left: -50,
          child: Image.asset(
            AssetImagePaths.polygonup,
            height: height189,
            width: height189,
          )),
      Positioned(
          bottom: 13,
          right: -50,
          child: Image.asset(AssetImagePaths.polygondown,
              height: height189, width: height189))
    ]));
  }
}
