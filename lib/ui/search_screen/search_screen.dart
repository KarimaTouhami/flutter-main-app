import 'package:ecommerce_ui_kit/config/asset_image_paths.dart';
import 'package:ecommerce_ui_kit/util/colors.dart';
import 'package:ecommerce_ui_kit/util/string_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../config/routes/app_routes.dart';
import '../../util/size_config.dart';

// ignore: must_be_immutable
class SearchScreen extends StatelessWidget {
  SearchScreen({Key? key}) : super(key: key);

  List<String> productList = [
    "Jackets",
    "T-shirts",
    "Shirts",
    "Hoodies & Sweatshirts",
    "Shoes",
    "Westernwear",
    "Kurta & Suits",
    "Kurta & Plaza",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Padding(
                padding: const EdgeInsets.symmetric(horizontal: size10),
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      Row(
                        children: [
                          GestureDetector(
                            child: Image.asset(
                              AssetImagePaths.arrow,
                              height: height24,
                              width: height24,
                              color: titleColor,
                            ),
                            onTap: () {
                              Get.back();
                            },
                          ),
                          SizedBox(
                              width: Get.width / 1.4,
                              child: const Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: size8),
                                  child: TextField(
                                      decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: StringConfig.searchProduct,
                                    hintStyle: TextStyle(
                                        fontFamily: StringConfig.poppins,
                                        fontSize: size13,
                                        fontWeight: FontWeight.w400,
                                        color: textfeildColor),
                                  )))),
                          const Spacer(),
                          const Text(StringConfig.clear,
                              style: TextStyle(
                                fontFamily: StringConfig.poppins,
                                color: titleColor,
                                fontWeight: FontWeight.w400,
                                fontSize: size13,
                              ))
                        ],
                      ),
                      const Padding(
                          padding: EdgeInsets.only(
                              top: size10, bottom: size8, left: size5),
                          child: Text(StringConfig.mostPopularSearches,
                              style: TextStyle(
                                fontFamily: StringConfig.poppins,
                                color: titleColor,
                                fontWeight: FontWeight.w500,
                                fontSize: height18,
                              ))),
                      SizedBox(
                        height: Get.height / 2.4,
                        child: ListView.builder(
                            itemCount: productList.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Row(children: [
                                InkWell(
                                  child: Padding(
                                      padding: const EdgeInsets.all(size6),
                                      child: Text(productList[index],
                                          style: const TextStyle(
                                            fontFamily: StringConfig.poppins,
                                            color: titleColor,
                                            fontWeight: FontWeight.w400,
                                            fontSize: height16,
                                          ))),
                                  onTap: () {
                                    Get.toNamed(AppRoutes.productListScreen);
                                  },
                                ),
                                const Spacer(),
                                Image.asset(
                                  AssetImagePaths.forwardarrow,
                                  height: height24,
                                  width: height24,
                                ),
                              ]);
                            }),
                      ),
                      SizedBox(
                        height: Get.height / 45,
                      ),
                      Center(
                          child: Column(children: [
                        Image.asset(
                          AssetImagePaths.camare,
                          height: height22,
                          width: height20,
                        ),
                        const Text(StringConfig.takePhoto)
                      ]))
                    ])))));
  }
}
