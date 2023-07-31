import 'package:ecommerce_ui_kit/util/string_config.dart';
import 'package:ecommerce_ui_kit/widget/textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/profile_controller.dart';
import '../../config/asset_image_paths.dart';
import '../../config/routes/app_routes.dart';
import '../../util/colors.dart';
import '../../util/size_config.dart';
import '../../widget/appbar_common.dart';
import '../loginscreen/widget_login/common_button.dart';

// ignore: must_be_immutable
class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({Key? key}) : super(key: key);
  final ProfileController profileController = Get.put(ProfileController());
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController dataController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  String userEmail = '';
  String password = '';

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
                    text: StringConfig.editProfile,
                  ),
                )),
            body: SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.all(height15),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: height20,
                            ),
                            child: Text(
                              StringConfig.personalDetails,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: height16,
                                height: height1_8,
                                fontFamily: StringConfig.poppins,
                                fontWeight: FontWeight.w400,
                                color: titleColor,
                              ),
                            ),
                          ),
                          Form(
                              key: formKey,
                              child: Column(children: [
                                const CustomTextField(
                                  labalText: StringConfig.name,
                                ),
                                const SizedBox(
                                  height: height25,
                                ),
                                const CustomTextField(
                                  labalText: StringConfig.email,
                                ),
                                const SizedBox(
                                  height: height25,
                                ),
                                const CustomTextField(
                                  labalText: StringConfig.dOB,
                                ),
                                const SizedBox(
                                  height: height25,
                                ),
                                const CustomTextField(
                                  labalText: StringConfig.country,
                                ),
                                const SizedBox(
                                  height: height25,
                                ),
                                Obx(() {
                                  return Container(
                                    height: 56,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          9,
                                        ),
                                        border: Border.all(color: codeColor)),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: DropdownButton<String>(
                                        hint: const Text(
                                          "Gender",
                                          style: TextStyle(
                                            fontFamily: StringConfig.poppins,
                                            color: greyColor,
                                            fontWeight: FontWeight.w400,
                                            fontSize: height13,
                                          ),
                                        ),
                                        onChanged: (value) {
                                          profileController
                                              .selectedGender.value = value!;
                                        },
                                        elevation: 1,
                                        icon: Padding(
                                          padding: EdgeInsets.only(
                                              left: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  1.6),
                                          child: Icon(
                                            Icons.keyboard_arrow_down,
                                            color: titleColor.withOpacity(0.6),
                                            size: height25,
                                          ),
                                        ),
                                        underline: Container(
                                          height: 0,
                                        ),
                                        items: profileController.languages
                                            .map<DropdownMenuItem<String>>(
                                                (String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value,
                                                style: const TextStyle(
                                                  fontFamily: "Poppins",
                                                  color: titleColor,
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: height14,
                                                )),
                                          );
                                        }).toList(),
                                      ),
                                    ),
                                  );
                                }),
                                const SizedBox(
                                  height: height25,
                                ),
                              ])),
                          Padding(
                            padding: const EdgeInsets.only(top: height115),
                            child: ButtonCommon(
                              buttonColor: appColor,
                              textColor: wightColor,
                              text: StringConfig.saveDetails,
                              onTap: () {
                                Get.toNamed(AppRoutes.profileScreen);
                              },
                            ),
                          ),
                          const SizedBox(
                            height: height25,
                          ),
                          ButtonCommon(
                            buttonColor: rowColor,
                            textColor: titleColor,
                            text: StringConfig.cancel,
                            onTap: () {
                              Get.toNamed(AppRoutes.profileScreen);
                            },
                          )
                        ])))));
  }
}
