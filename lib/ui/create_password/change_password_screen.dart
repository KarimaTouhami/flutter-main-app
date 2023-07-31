import 'package:ecommerce_ui_kit/controller/change_password_controller.dart';
import 'package:ecommerce_ui_kit/util/colors.dart';
import 'package:ecommerce_ui_kit/util/string_config.dart';
import 'package:ecommerce_ui_kit/widget/appbar_common.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../config/asset_image_paths.dart';
import '../../config/routes/app_routes.dart';
import '../../util/size_config.dart';
import '../../widget/textfield.dart';
import '../loginscreen/widget_login/common_button.dart';

// ignore: must_be_immutable
class ChangePasswordScreen extends StatelessWidget {
  ChangePasswordScreen({Key? key}) : super(key: key);
  String current = '';
  String password = '';
  String confirmPassword = '';
  final changePasswordController = Get.put(ChangePasswordController());

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
                  text: StringConfig.changeP,
                ),
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.all(height15),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      StringConfig.changePassword,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: height16,
                        height: size1_8,
                        fontFamily: StringConfig.poppins,
                        fontWeight: FontWeight.w400,
                        color: titleColor,
                      ),
                    ),
                    const SizedBox(
                      height: height15,
                    ),
                    Obx(
                      () =>  CustomTextField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return StringConfig.thisFieldIsRequired;
                          } else if (value.trim().length < 8) {
                            return StringConfig.passwordMustBe;
                          }
                          return "";
                        },
                        labalText: StringConfig.currentPassword,
                        isObsecureText:
                        !changePasswordController.passwordVisible.value,
                        suffixIcon: IconButton(
                          icon: Icon(
                              changePasswordController.passwordVisible.value
                                  ? Icons.visibility
                                  : Icons.visibility_off_outlined,
                              color: changePasswordController
                                  .passwordVisible.value
                                  ? appColor
                                  : textfeildColor),
                          onPressed: () {
                            changePasswordController.passwordVisible.toggle();
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: height25,
                    ),
                    Obx(
                      () => CustomTextField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return StringConfig.thisFieldIsRequired;
                          } else if (value.trim().length < 8) {
                            return StringConfig.passwordMustBe;
                          }
                          return "";
                        },
                        labalText: StringConfig.password,
                        isObsecureText:
                        !changePasswordController.hidePassword.value,
                        suffixIcon: IconButton(
                          icon: Icon(
                              changePasswordController.hidePassword.value
                                  ? Icons.visibility
                                  : Icons.visibility_off_outlined,
                              color: changePasswordController
                                  .hidePassword.value
                                  ? appColor
                                  : textfeildColor),
                          onPressed: () {
                            changePasswordController.hidePassword.toggle();
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: height25,
                    ),
                    Obx(
                      () =>  CustomTextField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return StringConfig.thisFieldIsRequired;
                          } else if (value.trim().length < 8) {
                            return StringConfig.passwordMustBe;
                          }
                          return "";
                        },
                        labalText: StringConfig.confirmPassword,
                        isObsecureText:
                        !changePasswordController.isVisibility.value,
                        suffixIcon: IconButton(
                          icon: Icon(
                              changePasswordController.isVisibility.value
                                  ? Icons.visibility
                                  : Icons.visibility_off_outlined,
                              color: changePasswordController
                                  .isVisibility.value
                                  ? appColor
                                  : textfeildColor),
                          onPressed: () {
                            changePasswordController.isVisibility.toggle();
                          },
                        ),
                      ),
                    ),
                    const Expanded(
                      child: Column(),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: size10),
                      child: ButtonCommon(
                        buttonColor: appColor,
                        textColor: wightColor,
                        text: StringConfig.changePassword,
                        onTap: () {
                          Get.toNamed(AppRoutes.profileScreen);
                        },
                      )
                    )
                  ])
            )));
  }
}
