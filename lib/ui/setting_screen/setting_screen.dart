import 'package:ecommerce_ui_kit/util/string_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_switch/flutter_switch.dart';
import '../../controller/setting_controller.dart';
import '../../config/asset_image_paths.dart';
import '../../util/colors.dart';
import '../../util/size_config.dart';
import '../../widget/appbar_common.dart';
import 'about_screen.dart';

class SettingScreen extends StatelessWidget {
  SettingScreen({Key? key}) : super(key: key);

  final SettingController settingController = Get.put(SettingController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: PreferredSize(
                preferredSize: const Size.fromHeight(height100),
                child: Padding(
                  padding: const EdgeInsets.all(height8),
                  child: AppBarWidget(
                    leadingIcon: AssetImagePaths.arrow,
                    leadingOnTap: () {
                      Get.back();
                    },
                    text: StringConfig.setting,
                  ),
                )),
            body: SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: height15),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: size10,
                          ),
                          const Text(StringConfig.appPushNotification,
                              style: TextStyle(
                                fontFamily: StringConfig.poppins,
                                color: titleColor,
                                fontWeight: FontWeight.w500,
                                fontSize: height18,
                              )),
                          const SizedBox(height: height10),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(StringConfig.enableNotification,
                                    style: TextStyle(
                                      fontFamily: StringConfig.poppins,
                                      color: titleColor,
                                      fontWeight: FontWeight.w400,
                                      fontSize: height16,
                                    )),
                                Obx(() => FlutterSwitch(
                                      width: height35,
                                      height: height22,
                                      toggleSize: height18,
                                      padding: size1,
                                      value:
                                          settingController.switchValue.value,
                                      activeColor: appColor,
                                      borderRadius: height40,
                                      onToggle: (value) =>
                                          settingController.toggleSwitch(value),
                                    ))
                              ]),
                          const SizedBox(height: height10),
                          const Text(StringConfig.languageSetting,
                              style: TextStyle(
                                fontFamily: StringConfig.poppins,
                                color: titleColor,
                                fontWeight: FontWeight.w500,
                                fontSize: height15,
                              )),
                          Container(
                              width: Get.width,
                              margin: const EdgeInsets.symmetric(
                                  vertical: height10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(size8),
                                border: Border.all(color: containerBorderColor),
                              ),
                              child: Obx(
                                () => DropdownButton<String>(
                                  onChanged: (String? language) =>
                                      settingController
                                          .changeLanguage(language!),
                                  elevation: 1,
                                  hint: Padding(
                                    padding:
                                        const EdgeInsets.only(left: height8),
                                    child: Text(
                                        settingController
                                            .selectedLanguage.value,
                                        style: const TextStyle(
                                            color: Colors.black)),
                                  ),
                                  icon: Icon(Icons.keyboard_arrow_down,
                                      color: titleColor.withOpacity(0.6),
                                      size: height25),
                                  underline: Container(height: 0),
                                  isExpanded: true,
                                  items: settingController.languages
                                      .map<DropdownMenuItem<String>>(
                                          (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value,
                                          style: const TextStyle(
                                              fontFamily: StringConfig.poppins,
                                              color: titleColor,
                                              fontWeight: FontWeight.w400,
                                              fontSize: height14)),
                                    );
                                  }).toList(),
                                ),
                              )),
                          const Text(StringConfig.aboutTheApp,
                              style: TextStyle(
                                  fontFamily: StringConfig.poppins,
                                  color: titleColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: height15)),
                          const SizedBox(height: height5),
                          GestureDetector(
                            onTap: () {
                              Get.to(AboutScreen());
                            },
                            child: const Text(StringConfig.aboutUs,
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontFamily: StringConfig.poppins,
                                    color: blackColor,
                                    fontWeight: FontWeight.w400,
                                    fontSize: height16)),
                          )
                        ])))));
  }
}
