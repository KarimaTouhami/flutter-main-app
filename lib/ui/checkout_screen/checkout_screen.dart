import 'package:ecommerce_ui_kit/ui/loginscreen/widget_login/common_button.dart';
import 'package:ecommerce_ui_kit/util/string_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/checkout_controller.dart';
import '../../config/asset_image_paths.dart';
import '../../config/routes/app_routes.dart';
import '../../util/colors.dart';
import '../../util/size_config.dart';
import '../../widget/appbar_common.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  final CheckOntController checkontController = Get.put(CheckOntController());
  String selectedOption = StringConfig.mastercard;
  bool selected = false;

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
                  ),
                )),
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
                  const SizedBox(
                    height: width35,
                  ),
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(size6),
                        border: Border.all(
                          color: appColor,
                        ),
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: height15, top: height15),
                              child: Text(StringConfig.cardNumber,
                                  style: TextStyle(
                                    fontFamily: StringConfig.poppins,
                                    color: titleColor,
                                    fontWeight: FontWeight.w400,
                                    fontSize: height13,
                                  )),
                            ),
                            Padding(
                                padding: const EdgeInsets.all(height15),
                                child: Container(
                                    height: height44,
                                    decoration: BoxDecoration(
                                        color: Colors.cyanAccent.shade100
                                            .withOpacity(size0_1),
                                        borderRadius:
                                            BorderRadius.circular(size6),
                                        border: Border.all(
                                          color: skyColor.withOpacity(size0_2),
                                        )),
                                    child: Row(children: [
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      const Text(
                                          StringConfig.st8746453698652647,
                                          style: TextStyle(
                                            fontFamily: StringConfig.poppins,
                                            color: nuColor,
                                            fontWeight: FontWeight.w400,
                                            fontSize: size12,
                                          )),
                                      const Spacer(),
                                      Image.asset(
                                        AssetImagePaths.mastercard,
                                        height: height30,
                                        width: height30,
                                      ),
                                      const SizedBox(
                                        width: size10,
                                      )
                                    ]))),
                            Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 15),
                                                child: Text(
                                                    StringConfig.expiryDate,
                                                    style: TextStyle(
                                                      fontFamily:
                                                          StringConfig.poppins,
                                                      color: titleColor,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: height12,
                                                    )),
                                              ),
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: size8, left: 15),
                                                  child: Container(
                                                      height: height44,
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width /
                                                              2.5,
                                                      decoration: BoxDecoration(
                                                        color: Colors
                                                            .cyanAccent.shade100
                                                            .withOpacity(
                                                                size0_1),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    size6),
                                                        border: Border.all(
                                                          color: skyColor
                                                              .withOpacity(
                                                                  size0_2),
                                                        ),
                                                      ),
                                                      child: const Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          8.0),
                                                              child: Text(
                                                                  StringConfig
                                                                      .stringMMYY,
                                                                  style:
                                                                      TextStyle(
                                                                    fontFamily:
                                                                        StringConfig
                                                                            .poppins,
                                                                    color:
                                                                        nuColor,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    fontSize:
                                                                        size12,
                                                                  )),
                                                            ),
                                                          ])))
                                            ]),
                                        Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Padding(
                                                padding:
                                                    EdgeInsets.only(left: 8.0),
                                                child: Text(
                                                    StringConfig.stringCVVCVC,
                                                    style: TextStyle(
                                                      fontFamily:
                                                          StringConfig.poppins,
                                                      color: titleColor,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: size12,
                                                    )),
                                              ),
                                              Padding(
                                                  padding: const EdgeInsets.all(
                                                      size8),
                                                  child: Container(
                                                      height: height44,
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width /
                                                              2.5,
                                                      decoration: BoxDecoration(
                                                        color: Colors
                                                            .cyanAccent.shade100
                                                            .withOpacity(
                                                                size0_1),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    size6),
                                                        border: Border.all(
                                                          color: skyColor
                                                              .withOpacity(
                                                                  size0_2),
                                                        ),
                                                      ),
                                                      child: const Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          8.0),
                                                              child: Text(
                                                                  StringConfig
                                                                      .cVV,
                                                                  style:
                                                                      TextStyle(
                                                                    fontFamily:
                                                                        StringConfig
                                                                            .poppins,
                                                                    color:
                                                                        nuColor,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    fontSize:
                                                                        size12,
                                                                  )),
                                                            )
                                                          ])))
                                            ])
                                      ])
                                ]),
                            Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: height15),
                                child: Row(children: [
                                  Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: height15),
                                      child: Row(children: [
                                        InkWell(
                                            onTap: () {
                                              setState(() {
                                                selected = !selected;
                                              });
                                            },
                                            child: Container(
                                              height: height20,
                                              width: height20,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          size6),
                                                  color: selected
                                                      ? appColor
                                                      : Colors.white,
                                                  border: Border.all(
                                                      width: size1_5,
                                                      color: appColor)),
                                              child: Padding(
                                                  padding: const EdgeInsets.all(
                                                      size0_1),
                                                  child: selected
                                                      ? const Icon(
                                                          Icons.check,
                                                          size: height15,
                                                          color: Colors.white,
                                                        )
                                                      : Container()),
                                            ))
                                      ])),
                                  const Text(StringConfig.saveCardDetails,
                                      style: TextStyle(
                                        fontFamily: StringConfig.poppins,
                                        color: nuColor,
                                        fontWeight: FontWeight.w400,
                                        fontSize: height13,
                                      )),
                                ]))
                          ])),
                  SizedBox(
                    height: Get.height / 10,
                  ),
                  ButtonCommon(
                      text: StringConfig.checkout,
                      textColor: wightColor,
                      buttonColor: appColor,
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) =>
                              checkontController.buildPopupDialog(context),
                        );
                      })
                ]))));
  }
}
