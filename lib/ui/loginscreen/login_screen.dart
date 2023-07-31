import 'package:ecommerce_ui_kit/config/asset_image_paths.dart';
import 'package:ecommerce_ui_kit/config/routes/app_routes.dart';
import 'package:ecommerce_ui_kit/util/colors.dart';
import 'package:ecommerce_ui_kit/util/size_config.dart';
import 'package:ecommerce_ui_kit/ui/loginscreen/widget_login/common_button.dart';
import 'package:ecommerce_ui_kit/ui/loginscreen/widget_login/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/login_controller.dart';
import '../../util/string_config.dart';
import '../../widget/appbar_common.dart';
import '../../widget/phone_field.dart';
import '../../widget/textfield.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  bool hidePassword = true;
  final formKey = GlobalKey<FormState>();
  String userEmail = '';
  String password = '';
  var userPassword = "12345678";
  final loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    loginController.controller.text = userPassword;
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
                      left: kPadding15, right: kPadding20, bottom: kPadding24),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: height20),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: height84),
                          child: Image.asset(
                            AssetImagePaths.loginimage,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: height30),
                              child: TextCommonWidget(
                                title: StringConfig.loginToYourAccount,
                                descriptions: StringConfig.welcomeBackPleaseEnter,
                              ),
                            ),
                          ],
                        ),
                        Form(
                            key: formKey,
                            child: Column(
                                children:[
                               PhoneNumberField(),
                              const SizedBox(height: size10),
                              Obx(
                                () => CustomTextField(
                                  controller:loginController.controller,
                                  labalText: StringConfig.enterPassword,
                                  isObsecureText: !loginController.passwordVisible.value,
                                  suffixIcon: IconButton(
                                    icon: Icon(loginController.passwordVisible.value
                                            ? Icons.visibility
                                            : Icons.visibility_off_outlined,
                                        color: loginController.passwordVisible.value
                                            ? appColor
                                            : textfeildColor),
                                    onPressed: () {
                                      loginController.passwordVisible.toggle();
                                    },
                                  )
                                )
                              ),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    TextButton(
                                        onPressed: () {
                                          Get.toNamed(
                                              AppRoutes.resetPasswordScreen);
                                        },
                                        child: const Text(
                                            StringConfig.forgotPassword,
                                            style: TextStyle(
                                              fontFamily: StringConfig.poppins,
                                              color: appColor,
                                              height: height08,
                                              fontWeight: FontWeight.w500,
                                              fontSize: height16))
                                    )
                                  ]),
                              const SizedBox(height: 15),
                              ButtonCommon(
                                buttonColor: appColor,
                                textColor: wightColor,
                                text: StringConfig.login,
                                onTap: () {
                                  if (formKey.currentState!.validate()) {
                                    Get.toNamed(
                                        AppRoutes.otpVerificationScreen);
                                  }
                                },
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: height15),
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
                                    padding: const EdgeInsets.symmetric(horizontal: size8),
                                    child: Container(
                                      height: height45,
                                      width: height75,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(size9),
                                        color: boxColor,),
                                      child: Padding(
                                        padding: const EdgeInsets.all(height13),
                                        child: Image.asset(
                                          AssetImagePaths.googlelogo,
                                          height: height10,
                                          width: height10,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: size8),
                                      child: Container(
                                          height: height45,
                                          width: height75,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(size9),
                                            color: boxColor,
                                          ),
                                          child: Padding(
                                              padding: const EdgeInsets.all(
                                                  height12),
                                              child: Image.asset(
                                                AssetImagePaths.applelogo,
                                                height: height10,
                                                width: height10,
                                              ))))
                                     ],
                                ),
                              const SizedBox(
                                height: height25,
                              ),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      StringConfig.newToECommerce,
                                      style: TextStyle(
                                        fontFamily: StringConfig.poppins,
                                        color: textfeildColor,
                                        fontWeight: FontWeight.w400,
                                        fontSize: height14,
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Get.toNamed(AppRoutes.signInScreen);
                                      },
                                      child: const Text(StringConfig.signUp,
                                          style: TextStyle(
                                            fontFamily: StringConfig.poppins,
                                            color: appColor,
                                            fontWeight: FontWeight.w500,
                                            fontSize: height16)),
                                    )
                                  ])
                            ]))
                      ]))
            )));
  }
}
