import 'package:ecommerce_ui_kit/config/asset_image_paths.dart';
import 'package:ecommerce_ui_kit/ui/profile_screen/custom_text_form_field.dart';
import 'package:ecommerce_ui_kit/util/colors.dart';
import 'package:ecommerce_ui_kit/util/string_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/profile_controller.dart';
import '../../config/routes/app_routes.dart';
import '../../util/size_config.dart';
import '../../widget/appbar_common.dart';

// ignore: must_be_immutable
class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);
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
                text: StringConfig.proFile,
              ))),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(height15),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                const Text(StringConfig.personalDetails,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: height16,
                      height: size1_8,
                      fontFamily: StringConfig.poppins,
                      fontWeight: FontWeight.w400,
                      color: titleColor,
                    )),
                InkWell(
                  child: Image.asset(
                    AssetImagePaths.erase,
                    height: height24,
                    width: height24,
                  ),
                  onTap: () {
                    Get.toNamed(AppRoutes.editProfileScreen);
                  },
                )
              ]),
              Form(
                  key: formKey,
                  child: const Column(children: [
                    SizedBox(
                      height: height15,
                    ),
                    CommonDataField(title: "Name", text: "Williams"),
                    SizedBox(
                      height: height25,
                    ),
                    CommonDataField(
                      title: "Email",
                      text: "name054@gmail.com",
                    ),
                    SizedBox(
                      height: height25,
                    ),
                    CommonDataField(
                      title: "DOB",
                      text: "02-25-1998",
                    ),
                    SizedBox(
                      height: height25,
                    ),
                    CommonDataField(title: "Country", text: "India"),
                    SizedBox(
                      height: height25,
                    ),
                    CommonDataField(
                      title: "Gender",
                      text: "MALE",
                    ),
                    SizedBox(
                      height: height25,
                    ),
                  ])),
              const SizedBox(
                height: height20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(StringConfig.myAddresses,
                      style: TextStyle(
                        fontFamily: StringConfig.poppins,
                        color: titleColor,
                        fontWeight: FontWeight.w500,
                        fontSize: height16,
                      )),
                  const SizedBox(
                    height: height10,
                  ),
                  const Text(
                    StringConfig.string_2464RoyalLnMesa,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: height12,
                      fontFamily: StringConfig.poppins,
                      height: size1_7,
                      fontWeight: FontWeight.w400,
                      color: greyColor,
                    ),
                  ),
                  const SizedBox(
                    height: size10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        StringConfig.removeAddress,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: height14,
                          decoration: TextDecoration.underline,
                          fontFamily: StringConfig.poppins,
                          fontWeight: FontWeight.w500,
                          color: appColor,
                        ),
                      ),
                      Image.asset(
                        AssetImagePaths.erase,
                        height: height24,
                        width: height24,
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: height25),
                    child: Container(
                        height: height50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: appColor),
                          borderRadius: BorderRadius.circular(height55),
                        ),
                        child: GestureDetector(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  AssetImagePaths.addPlus,
                                  height: height15,
                                  width: height15,
                                  color: appColor,
                                ),
                                const SizedBox(
                                  width: width15,
                                ),
                                const Text(StringConfig.addNewAddress,
                                    style: TextStyle(
                                      fontSize: height16,
                                      fontFamily: StringConfig.poppins,
                                      fontWeight: FontWeight.w500,
                                      color: appColor,
                                    ))
                              ]),
                          onTap: () {
                            Get.toNamed(AppRoutes.newAddressScreen);
                          },
                        )),
                  ),
                  const SizedBox(height: height50),
                  GestureDetector(
                    child: const Text(
                      StringConfig.changePassword,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: height14,
                        decoration: TextDecoration.underline,
                        fontFamily: StringConfig.poppins,
                        fontWeight: FontWeight.w500,
                        color: appColor,
                      ),
                    ),
                    onTap: () {
                      Get.toNamed(AppRoutes.changePasswordScreen);
                    },
                  ),
                  GestureDetector(
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: height10),
                      child: Text(
                        StringConfig.deleteAccount,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: height14,
                          decoration: TextDecoration.underline,
                          fontFamily: StringConfig.poppins,
                          fontWeight: FontWeight.w500,
                          color: appColor,
                        ),
                      ),
                    ),
                    onTap: () {
                      Get.toNamed(AppRoutes.deleteAccountScreen);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
