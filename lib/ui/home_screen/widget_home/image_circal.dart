
import 'package:ecommerce_ui_kit/config/routes/app_routes.dart';
import 'package:ecommerce_ui_kit/util/colors.dart';
import 'package:ecommerce_ui_kit/util/string_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../util/size_config.dart';

// ignore: must_be_immutable
class ImageCircle extends StatelessWidget {
  String? image;
  String? text;

  ImageCircle({
    super.key,
    this.image,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: blackColor,
      radius: width35,
      child: CircleAvatar(
        radius: height110,
        backgroundImage: AssetImage(image!),
        child: GestureDetector(
          child: Text(text!,
              style: const TextStyle(
                fontFamily: StringConfig.poppins,
                color: wightColor,
                fontWeight: FontWeight.w600,
                fontSize: size13,
              )),
          onTap: () {
            Get.toNamed(AppRoutes.categorieScreen);
          },
        )
      )
    );
  }
}
