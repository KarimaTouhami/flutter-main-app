import 'package:ecommerce_ui_kit/config/routes/app_routes.dart';
import 'package:ecommerce_ui_kit/util/string_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../config/asset_image_paths.dart';
import '../../util/colors.dart';
import '../../util/size_config.dart';
import '../../widget/appbar_common.dart';
import '../loginscreen/widget_login/common_button.dart';

class MyPaymentsAScreen extends StatefulWidget {
  const MyPaymentsAScreen({Key? key}) : super(key: key);

  @override
  State<MyPaymentsAScreen> createState() => _MyPaymentsAScreenState();
}

class _MyPaymentsAScreenState extends State<MyPaymentsAScreen> {
  String selectedOption = 'Mastercard';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: PreferredSize(
                preferredSize: const Size.fromHeight(height100),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 8),
                  child: AppBarWidget(
                    leadingIcon: AssetImagePaths.arrow,
                    leadingOnTap: () {
                      Get.back();
                    },
                    text: StringConfig.myPayments,
                  ),
                )),
            body: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 25),
              child: Column(children: [
                Padding(
                    padding: const EdgeInsets.only(bottom: height20),
                    child: Container(
                        height: height50,
                        decoration: BoxDecoration(
                          color: selectedOption == StringConfig.mastercard
                              ? rowColor
                              : wightColor,
                          borderRadius: BorderRadius.circular(size8),
                          border: Border.all(
                            color: selectedOption == StringConfig.mastercard
                                ? rowColor
                                : containerBorderColor,
                          ),
                        ),
                        child: Row(children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: height15),
                            child: Image.asset(
                              AssetImagePaths.mastercard,
                              height: height45,
                              width: height45,
                            ),
                          ),
                          const Text(StringConfig.mastercard,
                              style: TextStyle(
                                fontFamily: StringConfig.poppins,
                                color: titleColor,
                                fontWeight: FontWeight.w500,
                                fontSize: height14,
                              )),
                          const Spacer(),
                          Radio(
                              value: StringConfig.mastercard,
                              groupValue: selectedOption,
                              fillColor: MaterialStateColor.resolveWith(
                                  (states) => appColor),
                              onChanged: (value) {
                                setState(() {
                                  selectedOption = value!;
                                });
                              })
                        ]))),
                Container(
                    height: height50,
                    decoration: BoxDecoration(
                      color: selectedOption == StringConfig.visa
                          ? rowColor
                          : wightColor,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: selectedOption == StringConfig.visa
                            ? rowColor
                            : containerBorderColor,
                      ),
                    ),
                    child: Row(children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: height20, right: height17),
                        child: Image.asset(
                          AssetImagePaths.visa,
                          height: height40,
                          width: height40,
                        ),
                      ),
                      const Text(StringConfig.visa,
                          style: TextStyle(
                            fontFamily: StringConfig.poppins,
                            color: titleColor,
                            fontWeight: FontWeight.w500,
                            fontSize: height14,
                          )),
                      const Spacer(),
                      Radio(
                          value: StringConfig.visa,
                          groupValue: selectedOption,
                          fillColor: MaterialStateColor.resolveWith(
                              (states) => appColor),
                          onChanged: (value) {
                            setState(() {
                              selectedOption = value!;
                            });
                          })
                    ])),
                const SizedBox(
                  height: height20,
                ),
                Container(
                  height: height50,
                  decoration: BoxDecoration(
                    color: selectedOption == StringConfig.netBanking
                        ? rowColor
                        : wightColor,
                    borderRadius: BorderRadius.circular(size8),
                    border: Border.all(
                      color: selectedOption == StringConfig.netBanking
                          ? rowColor
                          : containerBorderColor,
                    ),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: height20, right: height24),
                        child: Image.asset(
                          AssetImagePaths.netBanking,
                          height: height30,
                          width: height30,
                        ),
                      ),
                      const Text(StringConfig.netBanking,
                          style: TextStyle(
                            fontFamily: StringConfig.poppins,
                            color: titleColor,
                            fontWeight: FontWeight.w500,
                            fontSize: height14,
                          )),
                      const Spacer(),
                      Radio(
                          value: StringConfig.netBanking,
                          groupValue: selectedOption,
                          fillColor: MaterialStateColor.resolveWith(
                              (states) => appColor),
                          onChanged: (value) {
                            setState(() {
                              selectedOption = value!;
                            });
                          })
                    ],
                  ),
                ),
                const Expanded(child: Column()),
                Padding(
                  padding: const EdgeInsets.only(bottom: height15),
                  child: ButtonCommon(
                    textColor: wightColor,
                    text: StringConfig.save,
                    buttonColor: appColor,
                    onTap: () {
                      Get.toNamed(AppRoutes.homeScreen);
                    },
                  ),
                )
              ])
            )));
  }
}
