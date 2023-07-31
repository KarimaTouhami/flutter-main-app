import 'package:ecommerce_ui_kit/ui/loginscreen/widget_login/text_widget.dart';
import 'package:ecommerce_ui_kit/util/colors.dart';
import 'package:ecommerce_ui_kit/util/size_config.dart';
import 'package:ecommerce_ui_kit/util/string_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../config/asset_image_paths.dart';
import '../../config/routes/app_routes.dart';
import '../../widget/appbar_common.dart';
import '../../widget/phone_field.dart';
import '../loginscreen/widget_login/common_button.dart';

// ignore: must_be_immutable
class ResetPasswordScreen extends StatelessWidget {
  ResetPasswordScreen({Key? key}) : super(key: key);
  String password = '';
  TextEditingController resetPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: PreferredSize(
                preferredSize: const Size.fromHeight(height100),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AppBarWidget(
                    leadingIcon: AssetImagePaths.arrow,
                    leadingOnTap: () {
                      Get.back();
                    },
                  ),
                )),
            body: SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: height15),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: height30,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: width70),
                            child: Image.asset(
                              AssetImagePaths.resetimage,
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(vertical: height30),
                            child: TextCommonWidget(
                              title: StringConfig.resetPassword,
                              descriptions:
                                  StringConfig.weWillSendA4DigitCodeYourMobile,
                            ),
                          ),
                          PhoneNumberField(),
                          Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: height32),
                              child: ButtonCommon(
                                textColor: titleColor,
                                text: StringConfig.send,
                                buttonColor: rowColor,
                                onTap: () {
                                  Get.toNamed(AppRoutes.forgotVerification);
                                },
                              ))
                        ])))));
  }
}
