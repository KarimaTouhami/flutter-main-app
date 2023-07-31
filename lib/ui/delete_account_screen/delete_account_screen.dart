import 'package:ecommerce_ui_kit/config/routes/app_routes.dart';
import 'package:ecommerce_ui_kit/util/colors.dart';
import 'package:ecommerce_ui_kit/util/string_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../config/asset_image_paths.dart';
import '../../util/size_config.dart';
import '../../widget/appbar_common.dart';
import '../loginscreen/widget_login/common_button.dart';

class DeleteAccountScreen extends StatelessWidget {
  const DeleteAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: PreferredSize(
                preferredSize: const Size.fromHeight(height50),
                child: Padding(
                    padding: const EdgeInsets.all(height8),
                    child: AppBarWidget(
                        leadingIcon: AssetImagePaths.arrow,
                        leadingOnTap: () {
                          Navigator.pop(context);
                        }))),
            body: SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.all(height15),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: size10),
                            child: Text(
                              StringConfig.weWillMissYou,
                              style: TextStyle(
                                  fontFamily: StringConfig.poppins,
                                  fontWeight: FontWeight.w500,
                                  fontSize: height22,
                                  color: titleColor),
                            ),
                          ),
                          const Text(
                            StringConfig.loremText,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontFamily: StringConfig.poppins,
                                fontWeight: FontWeight.w400,
                                fontSize: size13,
                                color: titleColor),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: size10),
                            child: Text(
                              StringConfig.loremIpsumIsSimplyDummy,
                              style: TextStyle(
                                  fontFamily: StringConfig.poppins,
                                  fontWeight: FontWeight.w500,
                                  fontSize: height15,
                                  color: titleColor),
                            ),
                          ),
                          const Text(
                            StringConfig
                                .loremIpsumIsSimplyDummyTextOfThePrinting,
                            maxLines: 11,
                            style: TextStyle(
                                fontFamily: StringConfig.poppins,
                                fontWeight: FontWeight.w400,
                                fontSize: size12,
                                color: titleColor),
                          ),
                          SizedBox(
                            height: Get.height / 5,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(vertical: height15),
                            child: ButtonCommon(
                              buttonColor: appColor,
                              textColor: wightColor,
                              text: StringConfig.leaveNow,
                              onTap: () {
                                Get.offAllNamed(AppRoutes.loginScreen);
                              },
                            ),
                          ),
                          ButtonCommon(
                            buttonColor: rowColor,
                            textColor: titleColor,
                            text: StringConfig.iWantToStay,
                            onTap: () {
                              Get.back();
                            },
                          )
                        ])))));
  }
}
