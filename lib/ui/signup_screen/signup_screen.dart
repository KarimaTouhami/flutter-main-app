import 'package:ecommerce_ui_kit/config/asset_image_paths.dart';
import 'package:ecommerce_ui_kit/config/routes/app_routes.dart';
import 'package:ecommerce_ui_kit/util/colors.dart';
import 'package:ecommerce_ui_kit/util/size_config.dart';
import 'package:ecommerce_ui_kit/ui/loginscreen/widget_login/common_button.dart';
import 'package:ecommerce_ui_kit/ui/loginscreen/widget_login/text_widget.dart';
import 'package:ecommerce_ui_kit/widget/phone_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/signup_controller.dart';
import '../../util/string_config.dart';
import '../../widget/appbar_common.dart';
import '../../widget/textfield.dart';

// ignore: must_be_immutable
class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key}) : super(key: key);

  final formKey = GlobalKey<FormState>();
  String mobileNumber = '';
  String name = '';
  String password = '';
  String confPassword = '';
  final signInController = Get.put(SignInController());

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
                    padding: const EdgeInsets.only(
                        left: height15, right: height20, bottom: height24),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: height20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: height65),
                            child: Image.asset(
                              AssetImagePaths.signinimage,
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(vertical: height30),
                            child: TextCommonWidget(
                              title: StringConfig.createANewAccount,
                              descriptions: StringConfig
                                  .joinUsNowToBePartOfECommerceFamily,
                            ),
                          ),
                          Form(
                              key: formKey,
                              child: Column(children: [
                                CustomTextField(
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter your name';
                                    }
                                    return "";
                                  },
                                  labalText: StringConfig.enterName,
                                ),
                                const SizedBox(
                                  height: height25,
                                ),
                                PhoneNumberField(),
                                const SizedBox(
                                  height: height10,
                                ),
                                Obx(() => CustomTextField(
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return StringConfig.thisFieldIsRequired;
                                      } else if (value.trim().length < 8) {
                                        return StringConfig.passwordMustBe;
                                      }
                                      return "";
                                    },
                                    labalText: StringConfig.enterPassword,
                                    isObsecureText:
                                        !signInController.passwordVisible.value,
                                    suffixIcon: IconButton(
                                        icon: Icon(
                                            signInController
                                                    .passwordVisible.value
                                                ? Icons.visibility
                                                : Icons.visibility_off_outlined,
                                            color: signInController
                                                    .passwordVisible.value
                                                ? appColor
                                                : textfeildColor),
                                        onPressed: () {
                                          signInController.passwordVisible
                                              .toggle();
                                        }))),
                                const SizedBox(height: height25),
                                Obx(() => CustomTextField(
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
                                        !signInController.hidePassword.value,
                                    suffixIcon: IconButton(
                                        icon: Icon(
                                            signInController.hidePassword.value
                                                ? Icons.visibility
                                                : Icons.visibility_off_outlined,
                                            color: signInController
                                                    .hidePassword.value
                                                ? appColor
                                                : textfeildColor),
                                        onPressed: () {
                                          signInController.hidePassword
                                              .toggle();
                                        }))),
                                const SizedBox(
                                  height: height35,
                                ),
                                ButtonCommon(
                                    text: StringConfig.signUp,
                                    textColor: wightColor,
                                    buttonColor: appColor,
                                    onTap: () {
                                      if (formKey.currentState!.validate()) {
                                        Get.toNamed(
                                            AppRoutes.otpVerificationScreen);
                                      }
                                    }),
                                const Padding(
                                  padding:
                                      EdgeInsets.symmetric(vertical: height15),
                                  child: Center(
                                    child: Text(StringConfig.orLoginWith,
                                        style: TextStyle(
                                          fontFamily: StringConfig.poppins,
                                          color: greyColor,
                                          fontWeight: FontWeight.w400,
                                          fontSize: height14,
                                        )),
                                  ),
                                ),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: size8),
                                          child: Container(
                                              height: height45,
                                              width: height75,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        size9),
                                                color: boxColor,
                                              ),
                                              child: Padding(
                                                  padding: const EdgeInsets.all(
                                                      size13),
                                                  child: Image.asset(
                                                    AssetImagePaths.googlelogo,
                                                    height: size10,
                                                    width: size10,
                                                  )))),
                                      Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: size8),
                                          child: Container(
                                              height: height45,
                                              width: height75,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        size9),
                                                color: boxColor,
                                              ),
                                              child: Padding(
                                                  padding: const EdgeInsets.all(
                                                      size12),
                                                  child: Image.asset(
                                                    AssetImagePaths.applelogo,
                                                    height: size10,
                                                    width: size10,
                                                  ))))
                                    ]),
                                const SizedBox(
                                  height: height25,
                                ),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text(StringConfig.newToECommerceApp,
                                          style: TextStyle(
                                            fontFamily: StringConfig.poppins,
                                            color: textfeildColor,
                                            fontWeight: FontWeight.w400,
                                            fontSize: height14,
                                          )),
                                      TextButton(
                                        onPressed: () {
                                          Get.toNamed(AppRoutes.loginScreen);
                                        },
                                        child: const Text(StringConfig.login,
                                            style: TextStyle(
                                              fontFamily: StringConfig.poppins,
                                              color: appColor,
                                              fontWeight: FontWeight.w500,
                                              fontSize: height16,
                                            )),
                                      )
                                    ])
                              ]))
                        ])))));
  }
}
