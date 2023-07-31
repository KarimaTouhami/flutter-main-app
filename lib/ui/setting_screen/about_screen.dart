import 'package:ecommerce_ui_kit/util/string_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/about_controller.dart';
import '../../config/asset_image_paths.dart';
import '../../util/colors.dart';
import '../../util/size_config.dart';
import '../../widget/appbar_common.dart';

class AboutScreen extends StatelessWidget {
  AboutScreen({Key? key}) : super(key: key);

  final AboutController aboutController = Get.put(AboutController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: PreferredSize(
                preferredSize: const Size.fromHeight(height50),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AppBarWidget(
                    leadingIcon: AssetImagePaths.arrow,
                    leadingOnTap: () {
                      Navigator.pop(context);
                    },
                    text: StringConfig.abOutUs,
                  ),
                )),
            body: Padding(
                padding: const EdgeInsets.symmetric(horizontal: height15),
                child: Column(children: [
                  const Padding(
                      padding: EdgeInsets.symmetric(vertical: height40),
                      child: Center(
                          child: Text(StringConfig.supportDesign,
                              textAlign: TextAlign.center,
                              maxLines: 3,
                              style: TextStyle(
                                fontFamily: StringConfig.poppins,
                                color: titleColor,
                                height: size1_5,
                                fontWeight: FontWeight.w400,
                                fontSize: height17,
                              )))),
                  const Padding(
                      padding: EdgeInsets.symmetric(vertical: height14),
                      child: Text(StringConfig.followUs,
                          style: TextStyle(
                            fontFamily: StringConfig.poppins,
                            color: titleColor,
                            fontWeight: FontWeight.w400,
                            fontSize: height20,
                          ))),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        AssetImagePaths.about1,
                        height: Get.height / 7.2,
                      ),
                      Image.asset(
                        AssetImagePaths.about2,
                        height: Get.height / 7.2,
                      )
                    ],
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(vertical: height15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            AssetImagePaths.about3,
                            height: Get.height / 7.2,
                          ),
                          Image.asset(
                            AssetImagePaths.about4,
                            height: Get.height / 7.2,
                          )
                        ],
                      )),
                  // const SizedBox(height: 50,),
                  Expanded(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(AssetImagePaths.twitter,
                                height: height24, width: height24),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: height25),
                              child: Image.asset(AssetImagePaths.instagram,
                                  height: height24, width: height24),
                            ),
                            Image.asset(AssetImagePaths.youtube,
                                height: height24, width: height24),
                          ],
                        ),
                        const Text(
                          StringConfig.copyrightComAllRightsReserved,
                          style: TextStyle(
                            fontFamily: StringConfig.poppins,
                            color: greyColor,
                            fontWeight: FontWeight.w400,
                            fontSize: size13,
                          ),
                        )
                      ]))
                ]))));
  }
}
