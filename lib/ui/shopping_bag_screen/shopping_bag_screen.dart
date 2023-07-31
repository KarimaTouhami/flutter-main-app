import 'package:ecommerce_ui_kit/config/asset_image_paths.dart';
import 'package:ecommerce_ui_kit/util/colors.dart';
import 'package:ecommerce_ui_kit/util/size_config.dart';
import 'package:ecommerce_ui_kit/util/string_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../config/routes/app_routes.dart';
import '../../widget/appbar_common.dart';
import '../loginscreen/widget_login/common_button.dart';

class ShoppingScreen extends StatefulWidget {
  const ShoppingScreen({Key? key}) : super(key: key);

  @override
  State<ShoppingScreen> createState() => _ShoppingScreenState();
}

class _ShoppingScreenState extends State<ShoppingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: PreferredSize(
                preferredSize: const Size.fromHeight(height100),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: height8, top: height8, bottom: height14),
                  child: AppBarWidget(
                    leadingIcon: AssetImagePaths.arrow,
                    leadingOnTap: () {
                      Get.back();
                    },
                    text: "SHOPPING BAG",
                  ),
                )),
            body: SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: height15),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 8,
                          ),
                          SizedBox(
                              height: height320,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  //mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: height10),
                                      child: Text(
                                        StringConfig.itemSelected,
                                        style: TextStyle(
                                          fontFamily: StringConfig.poppins,
                                          color: titleColor.withOpacity(0.7),
                                          fontWeight: FontWeight.w500,
                                          fontSize: height14,
                                        ),
                                      ),
                                    ),
                                    Container(
                                        height: height99,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: appColor,
                                          borderRadius:
                                              BorderRadius.circular(height10),
                                        ),
                                        child: Row(children: [
                                          Expanded(
                                              child: Container(
                                                  decoration: BoxDecoration(
                                                    color: wightColor,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            height10),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: height10,
                                                        color: dollarTextColor
                                                            .withOpacity(0.2),
                                                      ),
                                                    ],
                                                  ),
                                                  child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  top: height8),
                                                          child: Image.asset(
                                                            AssetImagePaths
                                                                .proDetail,
                                                            height: 83,
                                                            width: 83,
                                                          ),
                                                        ),
                                                        Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              const Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        top:
                                                                            height10),
                                                                child: Text(
                                                                  StringConfig
                                                                      .lockiesShirt,
                                                                  style:
                                                                      TextStyle(
                                                                    fontFamily:
                                                                        StringConfig
                                                                            .poppins,
                                                                    color:
                                                                        titleColor,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontSize:
                                                                        height15,
                                                                  ),
                                                                ),
                                                              ),
                                                              const SizedBox(
                                                                height: height3,
                                                              ),
                                                              const Row(
                                                                children: [
                                                                  Text(
                                                                    '\$${245}',
                                                                    style: TextStyle(
                                                                        fontFamily:
                                                                            StringConfig
                                                                                .poppins,
                                                                        fontSize:
                                                                            height13,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w500,
                                                                        color:
                                                                            titleColor),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 7,
                                                                  ),
                                                                  Text(
                                                                    '\$${245}',
                                                                    style:
                                                                        TextStyle(
                                                                      decoration:
                                                                          TextDecoration
                                                                              .lineThrough,
                                                                      fontFamily:
                                                                          StringConfig
                                                                              .poppins,
                                                                      color:
                                                                          dollarTextColor,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                      fontSize:
                                                                          height12,
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                              const SizedBox(
                                                                height: height3,
                                                              ),
                                                              Row(children: [
                                                                Row(
                                                                  children: [
                                                                    const Text(
                                                                      StringConfig
                                                                          .stringColor,
                                                                      style: TextStyle(
                                                                          fontFamily: StringConfig
                                                                              .poppins,
                                                                          fontSize:
                                                                              height11,
                                                                          fontWeight: FontWeight
                                                                              .w400,
                                                                          color:
                                                                              dollarTextColor),
                                                                    ),
                                                                    SizedBox(
                                                                      width:
                                                                          height10,
                                                                      height:
                                                                          height10,
                                                                      child:
                                                                          Container(
                                                                        decoration: BoxDecoration(
                                                                            borderRadius:
                                                                                BorderRadius.circular(height40),
                                                                            color: blackColor),
                                                                      ),
                                                                    )
                                                                  ],
                                                                ),
                                                                const Padding(
                                                                    padding: EdgeInsets
                                                                            .only(
                                                                        left:
                                                                            height8),
                                                                    child: Row(
                                                                        children: [
                                                                          Text(
                                                                            StringConfig.stringSize,
                                                                            style: TextStyle(
                                                                                fontFamily: StringConfig.poppins,
                                                                                fontSize: height11,
                                                                                fontWeight: FontWeight.w400,
                                                                                color: dollarTextColor),
                                                                          ),
                                                                          Text(
                                                                            StringConfig.S,
                                                                            style: TextStyle(
                                                                                fontFamily: StringConfig.poppins,
                                                                                fontSize: height12,
                                                                                fontWeight: FontWeight.w400,
                                                                                color: titleColor),
                                                                          ),
                                                                        ]))
                                                              ])
                                                            ]),
                                                        const Spacer(),
                                                        const Padding(
                                                            padding: EdgeInsets
                                                                    .symmetric(
                                                                horizontal:
                                                                    height8,
                                                                vertical:
                                                                    height15),
                                                            child: Row(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  CircleAvatar(
                                                                    radius: 9,
                                                                    backgroundColor:
                                                                        appColor,
                                                                    child: Icon(
                                                                      Icons
                                                                          .remove,
                                                                      color:
                                                                          wightColor,
                                                                      size:
                                                                          height12,
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                      width:
                                                                          height6),
                                                                  Text(
                                                                    "1",
                                                                    style: TextStyle(
                                                                        fontFamily:
                                                                            StringConfig
                                                                                .poppins,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        fontSize:
                                                                            height14,
                                                                        color:
                                                                            appColor),
                                                                  ),
                                                                  SizedBox(
                                                                    width:
                                                                        height6,
                                                                  ),
                                                                  CircleAvatar(
                                                                    radius: 9,
                                                                    backgroundColor:
                                                                        appColor,
                                                                    child: Icon(
                                                                      Icons.add,
                                                                      color:
                                                                          wightColor,
                                                                      size:
                                                                          height12,
                                                                    ),
                                                                  )
                                                                ]))
                                                      ]))),
                                          GestureDetector(
                                            child: Padding(
                                              padding: const EdgeInsets.all(
                                                  height11),
                                              child: Image.asset(
                                                AssetImagePaths.delete,
                                                height: height20,
                                                width: height20,
                                              ),
                                            ),
                                            onTap: () {
                                              Get.toNamed(AppRoutes
                                                  .emptyShoppingScreen);
                                            },
                                          )
                                        ]))
                                  ])),
                          const Column(children: [
                            Text(StringConfig.addDiscountCode,
                                style: TextStyle(
                                  fontFamily: StringConfig.poppins,
                                  color: titleColor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: height18,
                                ))
                          ]),
                          Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: height20),
                              child: Container(
                                  height: height48,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(height8),
                                    border: Border.all(
                                      color: codeColor,
                                    ),
                                  ),
                                  child: const Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: height15),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizedBox(
                                                width: height250,
                                                child: TextField(
                                                  decoration: InputDecoration(
                                                    hintText: StringConfig
                                                        .enterDiscountCode,
                                                    hintStyle: TextStyle(
                                                      color: codeColor,
                                                      fontSize: height15,
                                                      fontFamily:
                                                          StringConfig.poppins,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                    border: InputBorder.none,
                                                    focusedBorder:
                                                        InputBorder.none,
                                                    enabledBorder:
                                                        InputBorder.none,
                                                    errorBorder:
                                                        InputBorder.none,
                                                  ),
                                                )),
                                            Text(
                                              StringConfig.apply,
                                              style: TextStyle(
                                                  fontFamily:
                                                      StringConfig.poppins,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: height12,
                                                  color: appColor),
                                            )
                                          ])))),
                          Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: height8),
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: wightColor.withOpacity(0.7),
                                      borderRadius:
                                          BorderRadius.circular(height8),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 5.0,
                                          color:
                                              dollarTextColor.withOpacity(0.2),
                                        )
                                      ]),
                                  child: const Padding(
                                      padding: EdgeInsets.all(height10),
                                      child: Column(children: [
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                StringConfig.orderValue,
                                                style: TextStyle(
                                                    fontFamily:
                                                        StringConfig.poppins,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: height14,
                                                    color: nuColor),
                                              ),
                                              Text(
                                                "\$${120}",
                                                style: TextStyle(
                                                    fontFamily:
                                                        StringConfig.poppins,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: height14,
                                                    color: titleColor),
                                              ),
                                            ]),
                                        SizedBox(
                                          height: height5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              StringConfig.delivery,
                                              style: TextStyle(
                                                  fontFamily:
                                                      StringConfig.poppins,
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: height14,
                                                  color: nuColor),
                                            ),
                                            Text(
                                              "\$${20}",
                                              style: TextStyle(
                                                  fontFamily:
                                                      StringConfig.poppins,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: height14,
                                                  color: titleColor),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: height5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              StringConfig.discountCoupon,
                                              style: TextStyle(
                                                  fontFamily:
                                                      StringConfig.poppins,
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: height14,
                                                  color: nuColor),
                                            ),
                                            Text(
                                              "\$${0}",
                                              style: TextStyle(
                                                  fontFamily:
                                                      StringConfig.poppins,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: height14,
                                                  color: titleColor),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: height5,
                                        ),
                                        Divider(),
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                StringConfig.total,
                                                style: TextStyle(
                                                    fontFamily:
                                                        StringConfig.poppins,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: height16,
                                                    color: titleColor),
                                              ),
                                              Text(
                                                "\$${114}",
                                                style: TextStyle(
                                                    fontFamily:
                                                        StringConfig.poppins,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: height16,
                                                    color: titleColor),
                                              )
                                            ])
                                      ])))),
                          Container(
                            height: Get.height / 18,
                          ),
                          Padding(
                              padding: const EdgeInsets.only(bottom: height15),
                              child: ButtonCommon(
                                buttonColor: appColor,
                                textColor: wightColor,
                                text: "Place Order",
                                onTap: () {
                                  Get.toNamed(AppRoutes.addressScreen);
                                },
                              ))
                        ])))));
  }
}
