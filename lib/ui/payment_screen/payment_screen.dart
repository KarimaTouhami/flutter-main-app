import 'package:ecommerce_ui_kit/config/asset_image_paths.dart';
import 'package:ecommerce_ui_kit/config/routes/app_routes.dart';
import 'package:ecommerce_ui_kit/ui/loginscreen/widget_login/common_button.dart';
import 'package:ecommerce_ui_kit/util/colors.dart';
import 'package:ecommerce_ui_kit/util/string_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../util/size_config.dart';
import '../../widget/appbar_common.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  String selectedOption = 'Mastercard';

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
                        Get.back();
                      },
                      text: StringConfig.checkouts,
                      trailingIcon: AssetImagePaths.heartic,
                      trailingOnTap: () {
                        Get.toNamed(AppRoutes.favouriteScreen);
                      },
                    ))),
            body: Padding(
                padding: const EdgeInsets.all(height15),
                child: Column(children: [
                  const Text(StringConfig.payment,
                      style: TextStyle(
                        fontFamily: StringConfig.poppins,
                        color: titleColor,
                        fontWeight: FontWeight.w500,
                        fontSize: height14,
                      )),
                  const SizedBox(
                    height: size10,
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(children: [
                          Image.asset(
                            AssetImagePaths.shopbag,
                            height: height17,
                            width: height17,
                          ),
                          const SizedBox(
                            width: height15,
                          ),
                          const Text(StringConfig.work,
                              style: TextStyle(
                                fontFamily: StringConfig.poppins,
                                color: titleColor,
                                fontWeight: FontWeight.w500,
                                fontSize: height16,
                              )),
                        ]),
                        const Text(
                          StringConfig.wadeWarren,
                          style: TextStyle(
                            fontSize: size12,
                            height: size1_8,
                            fontFamily: StringConfig.poppins,
                            fontWeight: FontWeight.w400,
                            color: greyColor,
                          ),
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(StringConfig.royalLnMesaNewJersey,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: size12,
                                    height: size1_8,
                                    fontFamily: StringConfig.poppins,
                                    fontWeight: FontWeight.w400,
                                    color: greyColor,
                                  )),
                              Image.asset(
                                AssetImagePaths.erase,
                                height: height24,
                                width: height24,
                              )
                            ])
                      ]),
                  const SizedBox(
                    height: height15,
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(vertical: height20),
                      child: Container(
                          height: height50,
                          decoration: BoxDecoration(
                            color: selectedOption == StringConfig.mastercard
                                ? rowColor
                                : wightColor.withOpacity(0.4),
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
                            : wightColor.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(size8),
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
                            : wightColor.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(size8),
                        border: Border.all(
                          color: selectedOption == StringConfig.netBanking
                              ? rowColor
                              : containerBorderColor,
                        ),
                      ),
                      child: Row(children: [
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
                      ])),
                  const Expanded(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(StringConfig.total,
                                  style: TextStyle(
                                    fontFamily: StringConfig.poppins,
                                    color: blackXColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: height16,
                                  )),
                              Text("\$${245}",
                                  style: TextStyle(
                                    fontFamily: StringConfig.poppins,
                                    color: blackXColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: height16,
                                  ))
                            ]),
                        SizedBox(
                          height: height20,
                        )
                      ])),
                  Padding(
                      padding: const EdgeInsets.only(bottom: size8),
                      child: ButtonCommon(
                        textColor: wightColor,
                        text: StringConfig.continueToCheckout,
                        buttonColor: appColor,
                        onTap: () {
                          Get.toNamed(AppRoutes.checkoutScreen);
                        },
                      ))
                ]))));
  }
}
