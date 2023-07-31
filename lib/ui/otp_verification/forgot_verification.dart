import 'package:ecommerce_ui_kit/config/asset_image_paths.dart';
import 'package:ecommerce_ui_kit/ui/loginscreen/widget_login/text_widget.dart';
import 'package:ecommerce_ui_kit/util/colors.dart';
import 'package:ecommerce_ui_kit/util/size_config.dart';
import 'package:ecommerce_ui_kit/util/string_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import '../../config/routes/app_routes.dart';
import '../../widget/appbar_common.dart';
import '../loginscreen/widget_login/common_button.dart';

// ignore: must_be_immutable
class ForgotVerification extends StatelessWidget {
  ForgotVerification({
    super.key,
  });

  bool isNavigate = false;

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
                    ))),
            body: SingleChildScrollView(
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: height15),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: height30,
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.symmetric(horizontal: height88),
                          child: Image.asset(
                            AssetImagePaths.lockimage,
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.symmetric(vertical: height40),
                          child: TextCommonWidget(
                            title: StringConfig.verification,
                            descriptions: StringConfig.codeVerification,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: size10),
                          child: Center(
                            child: Pinput(
                              defaultPinTheme: defaultPinTheme,
                              validator: (s) {
                                return s == StringConfig.string_2222
                                    ? null
                                    : StringConfig.yourOtpIncorrect;
                              },
                              pinputAutovalidateMode:
                                  PinputAutovalidateMode.onSubmit,
                              showCursor: true,
                              // ignore: avoid_print
                              onCompleted: (pin) => print(pin),
                            ),
                          ),
                        ),
                        Padding(
                            padding:
                                const EdgeInsets.symmetric(vertical: height20),
                            child: Center(
                                child: InkWell(
                              child: const Text(
                                StringConfig.resendOtp,
                                style: TextStyle(
                                    fontSize: height16,
                                    fontFamily: StringConfig.poppins,
                                    fontWeight: FontWeight.w500,
                                    color: textfeildColor),
                              ),
                              onTap: () {
                                Get.toNamed(AppRoutes.resetPasswordScreen);
                              },
                            ))),
                        const SizedBox(
                          height: height20,
                        ),
                        ButtonCommon(
                          text: StringConfig.verify,
                          textColor: wightColor,
                          buttonColor: appColor,
                          onTap: () {
                            Get.toNamed(AppRoutes.createPasswordScreen);
                          },
                        ),
                        const SizedBox(
                          height: height25,
                        ),
                        Center(
                            child: RichText(
                                text: const TextSpan(
                          text: StringConfig.resendCodeIn,
                          style: TextStyle(
                            fontFamily: StringConfig.poppins,
                            color: textfeildColor,
                            fontWeight: FontWeight.w400,
                            fontSize: height14,
                          ),
                          children: [
                            TextSpan(
                                text: StringConfig.string_0047,
                                style: TextStyle(
                                  fontFamily: StringConfig.poppins,
                                  color: appColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: height16,
                                )),
                          ],
                        )))
                      ])),
            )));
  }

  final defaultPinTheme = PinTheme(
    width: 90,
    height: 60,
    textStyle: const TextStyle(
        fontSize: 28, color: appColor, fontWeight: FontWeight.w400),
    decoration: BoxDecoration(
      border: Border.all(color: const Color.fromRGBO(234, 239, 243, 1)),
      borderRadius: BorderRadius.circular(12),
    ),
  );
}
