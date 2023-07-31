import 'package:ecommerce_ui_kit/config/asset_image_paths.dart';
import 'package:ecommerce_ui_kit/config/routes/app_routes.dart';
import 'package:ecommerce_ui_kit/ui/loginscreen/widget_login/common_button.dart';
import 'package:ecommerce_ui_kit/ui/loginscreen/widget_login/text_widget.dart';
import 'package:ecommerce_ui_kit/util/colors.dart';
import 'package:ecommerce_ui_kit/util/size_config.dart';
import 'package:ecommerce_ui_kit/util/string_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/create_password_controller.dart';
import '../../widget/appbar_common.dart';
import '../../widget/textfield.dart';

// ignore: must_be_immutable
class CreatePasswordScreen extends StatelessWidget {
  CreatePasswordScreen({Key? key}) : super(key: key);

  final createPasswordController = Get.put(CreatePasswordController());

  bool hidePassword = true;
  final formKey = GlobalKey<FormState>();
  // ignore: non_constant_identifier_names
  String Confirm = '';
  String password = '';
  // ignore: non_constant_identifier_names
  TextEditingController Controller = TextEditingController();
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
                    padding: const EdgeInsets.symmetric(horizontal: 15),
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
                              title: StringConfig.createPassword,
                              descriptions:
                                  StringConfig.createNewPasswordAndReset,
                            ),
                          ),
                          Form(
                              key: formKey,
                              child: Column(children: [
                                Obx( () => CustomTextField(
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
                                      !createPasswordController.passwordVisible.value,
                                      suffixIcon: IconButton(
                                        icon: Icon(
                                            createPasswordController.passwordVisible.value
                                                ? Icons.visibility
                                                : Icons.visibility_off_outlined,
                                            color: createPasswordController
                                                .passwordVisible.value
                                                ? appColor
                                                : textfeildColor),
                                        onPressed: () {
                                          createPasswordController.passwordVisible.toggle();
                                        },
                                      ),
                                    ),
                                  ),
                                const SizedBox(
                                  height: height20,
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
                                    labalText: StringConfig.confirmPassword,
                                    isObsecureText:
                                    !createPasswordController.hidePassword.value,
                                    suffixIcon: IconButton(
                                      icon: Icon(
                                          createPasswordController.hidePassword.value
                                              ? Icons.visibility
                                              : Icons.visibility_off_outlined,
                                          color: createPasswordController
                                              .hidePassword.value
                                              ? appColor
                                              : textfeildColor),
                                      onPressed: () {
                                        createPasswordController.hidePassword.toggle();
                                      },
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: height20,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 32),
                                  child: GestureDetector(
                                    child: ButtonCommon(
                                      text: StringConfig.reset,
                                      buttonColor: rowColor,
                                    ),
                                    onTap: () {
                                      Get.toNamed(AppRoutes.loginScreen);
                                    },
                                  )
                                )
                              ]))
                        ])))));
  }
}
