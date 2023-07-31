import 'package:ecommerce_ui_kit/config/asset_image_paths.dart';
import 'package:ecommerce_ui_kit/config/routes/app_routes.dart';
import 'package:ecommerce_ui_kit/util/colors.dart';
import 'package:ecommerce_ui_kit/util/string_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../util/size_config.dart';

class ProductDetailCommon extends StatelessWidget {
  final Function()? trailingOnTap;

  const ProductDetailCommon({super.key, this.trailingOnTap});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(size10),
        width: Get.width/2.3,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(size10),
            border: Border.all(color: Colors.grey.withOpacity(0.1))),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(children: [
                Padding(
                    padding: const EdgeInsets.only(bottom: size10),
                    child: GestureDetector(
                        child: Image.asset(AssetImagePaths.proDetail),
                        onTap: () {
                          Get.toNamed(AppRoutes.productDetailScreen);
                        })),
                Positioned(
                    top: size8,
                    right: size8,
                    child: GestureDetector(
                      onTap: trailingOnTap!,
                      child: Image.asset(
                        AssetImagePaths.redHeart,
                        height: height18,
                      )
                    ))
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                const Text(StringConfig.lockiesShirt,
                    style: TextStyle(
                      fontFamily: StringConfig.poppins,
                      color: titleColor,
                      fontWeight: FontWeight.w500,
                      fontSize: height14,
                    )),
                Container(
                    height: height18,
                    width: height33,
                    decoration: const BoxDecoration(
                      color: rowColor,
                    ),
                    child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(StringConfig.string_4_2,
                              style: TextStyle(
                                fontFamily: StringConfig.poppins,
                                color: titleColor,
                                fontWeight: FontWeight.w400,
                                fontSize: size9,
                              )),
                          Icon(
                            Icons.star,
                            size: size12,
                            color: appColor,
                          )
                        ]))
              ]),
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                        text: '\$${245}',
                        style: TextStyle(
                            fontFamily: StringConfig.poppins,
                            fontSize: size12,
                            height: size1_5,
                            fontWeight: FontWeight.w500,
                            color: titleColor)),
                    TextSpan(
                        text: StringConfig.string_50off,
                        style: TextStyle(
                            fontFamily: StringConfig.poppins,
                            fontSize: size9,
                            fontWeight: FontWeight.w400,
                            color: redColor)),
                  ]
                )
              )
            ]));
  }
}