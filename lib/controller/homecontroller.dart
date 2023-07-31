import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../config/asset_image_paths.dart';
import '../util/string_config.dart';

class HomeController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmController = TextEditingController();
  RxBool visibility = false.obs;

  List<Map<String, dynamic>> categoryList = [
    {"Image": AssetImagePaths.grilimage, "Title": StringConfig.stringWomen},
    {"Image": AssetImagePaths.manimage, "Title": StringConfig.men},
    {"Image": AssetImagePaths.kids, "Title": StringConfig.kids},
    {"Image": AssetImagePaths.baby, "Title": StringConfig.baby},
  ].obs;

  List<Map<String, dynamic>> topBrand = [
    {
      "image": AssetImagePaths.pradeImage,
      "brandName": StringConfig.boss,
      "discount": StringConfig.uPto50OFF,
    },
    {
      "image": AssetImagePaths.burberryImage,
      "brandName": StringConfig.bURBARRY,
      "discount": StringConfig.upTo30OFF,
    },
    {
      "image": AssetImagePaths.bossInage,
      "brandName": StringConfig.boss,
      "discount": StringConfig.upToo25OFF,
    },
    {
      "image": AssetImagePaths.cultirImage,
      "brandName": StringConfig.carTir,
      "discount": StringConfig.uPto50OFF,
    },
    {
      "image": AssetImagePaths.gucciImage,
      "brandName": StringConfig.gucci,
      "discount": StringConfig.upToo25OFF,
    },
    {
      "image": AssetImagePaths.tiffenyImage,
      "brandName": StringConfig.tiffentAndCo,
      "discount": StringConfig.uPto33OFF,
    },
  ].obs;

}
