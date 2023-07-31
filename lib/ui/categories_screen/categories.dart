import 'package:ecommerce_ui_kit/config/asset_image_paths.dart';
import 'package:ecommerce_ui_kit/ui/categories_screen/widget/appbar_common.dart';
import 'package:ecommerce_ui_kit/util/colors.dart';
import 'package:ecommerce_ui_kit/util/font_family.dart';
import 'package:ecommerce_ui_kit/util/size_config.dart';
import 'package:ecommerce_ui_kit/util/string_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'widget/common_text.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.all(size10),
                    child: Column(children: [
                      CommonCategoryAppbar(
                        leadingIcon: AssetImagePaths.arrow,
                        leadingOnTap: () {
                          Get.back();
                        },
                      ),
                      const SizedBox(height: size7),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: height8),
                        child: Stack(children: [
                          Image.asset(
                            AssetImagePaths.catagoriesim,
                            fit: BoxFit.cover,
                          ),
                          const Positioned(
                            bottom: height38,
                            right: size7,
                            child: Text(StringConfig.october,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: bodaniModeItalic,
                                  color: appColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: height44,
                                )),
                          ),
                          const Positioned(
                            bottom: height15,
                            right: height45,
                            child: Text(StringConfig.collection,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: notoSerifTC,
                                  color: appSubText,
                                  fontWeight: FontWeight.w200,
                                  fontSize: height16,
                                )),
                          ),
                        ]),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: height14),
                        child: Text(
                          StringConfig.women,
                          style: TextStyle(
                            fontFamily: StringConfig.poppins,
                            color: titleColor,
                            fontWeight: FontWeight.w400,
                            fontSize: height30,
                          ),
                        ),
                      ),
                      Image.asset(
                        AssetImagePaths.devider,
                        height: size10,
                      ),
                      TextCommon(
                        productName: StringConfig.jackets,
                      ),
                      TextCommon(
                        productName: StringConfig.tShirts,
                      ),
                      TextCommon(
                        productName: StringConfig.shirts,
                      ),
                      TextCommon(
                        productName: StringConfig.hoodiesSweatshirts,
                      ),
                      TextCommon(
                        productName: StringConfig.shoes,
                      ),
                      TextCommon(
                        productName: StringConfig.westernWear,
                      ),
                      TextCommon(
                        productName: StringConfig.kurtaSuits,
                      ),
                      TextCommon(
                        productName: StringConfig.kurtaPlaza,
                      ),
                      TextCommon(
                        productName: StringConfig.lahengaCholis,
                      ),
                      TextCommon(
                        productName: StringConfig.jackets,
                      )
                    ])))));
  }
}
