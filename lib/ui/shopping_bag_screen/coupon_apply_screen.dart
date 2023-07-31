import 'package:ecommerce_ui_kit/config/asset_image_paths.dart';
import 'package:ecommerce_ui_kit/util/colors.dart';
import 'package:ecommerce_ui_kit/util/string_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../config/routes/app_routes.dart';
import '../../util/size_config.dart';
import '../../widget/appbar_common.dart';
import '../loginscreen/widget_login/common_button.dart';

class CouponApplyScreen extends StatelessWidget {
  const CouponApplyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.all(height15),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppBarWidget(
                            leadingIcon: AssetImagePaths.arrow,
                            leadingOnTap: () {
                              Navigator.pop(context);
                            },
                            text: StringConfig.shoppingBAG,
                          ),
                          const SizedBox(
                            height: height15,
                          ),
                          Text(
                            StringConfig.string_1itemSelected,
                            style: TextStyle(
                              fontFamily: StringConfig.poppins,
                              color: titleColor.withOpacity(size0_7),
                              fontWeight: FontWeight.w500,
                              fontSize: height14,
                            ),
                          ),
                          SizedBox(
                              height: height320,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: height15),
                                        child: Container(
                                            height: height99,
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              color: appColor,
                                              borderRadius:
                                                  BorderRadius.circular(size10),
                                            ),
                                            child: Row(children: [
                                              Container(
                                                  decoration: BoxDecoration(
                                                      color: wightColor,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              size10),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          blurRadius: size10,
                                                          color: dollarTextColor
                                                              .withOpacity(0.2),
                                                        )
                                                      ]),
                                                  child: Row(children: [
                                                    const SizedBox(
                                                      width: size4,
                                                    ),
                                                    Image.asset(
                                                      AssetImagePaths.proDetail,
                                                      height: height80,
                                                      width: height80,
                                                    ),
                                                    Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical:
                                                                    size12),
                                                        child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Row(children: [
                                                                const Text(
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
                                                                          height16,
                                                                    )),
                                                                const SizedBox(
                                                                  width:
                                                                      height60,
                                                                ),
                                                                Row(children: [
                                                                  SizedBox(
                                                                      width:
                                                                          height20,
                                                                      height:
                                                                          height20,
                                                                      child: Container(
                                                                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(height40), color: appColor),
                                                                          child: const Padding(
                                                                              padding: EdgeInsets.only(top: 0, left: size7),
                                                                              child: Text("-",
                                                                                  style: TextStyle(
                                                                                    fontSize: height22,
                                                                                    height: size1,
                                                                                    color: wightColor,
                                                                                  ))))),
                                                                  Container(
                                                                      width:
                                                                          height18,
                                                                      color: Colors
                                                                          .transparent,
                                                                      child: const Center(
                                                                          child: Text(
                                                                        StringConfig
                                                                            .string_1,
                                                                        style: TextStyle(
                                                                            fontFamily: StringConfig
                                                                                .poppins,
                                                                            fontWeight: FontWeight
                                                                                .w400,
                                                                            fontSize:
                                                                                height15,
                                                                            color:
                                                                                appColor),
                                                                      ))),
                                                                  Padding(
                                                                      padding: const EdgeInsets
                                                                              .only(
                                                                          right:
                                                                              size8),
                                                                      child: SizedBox(
                                                                          width: height20,
                                                                          height: height20,
                                                                          child: Container(
                                                                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(height40), color: appColor),
                                                                              child: const Center(
                                                                                  child: Text(
                                                                                "+",
                                                                                style: TextStyle(
                                                                                  fontSize: height16,
                                                                                  color: wightColor,
                                                                                ),
                                                                              )))))
                                                                ])
                                                              ]),
                                                              const Padding(
                                                                  padding: EdgeInsets
                                                                          .symmetric(
                                                                      vertical:
                                                                          size3),
                                                                  child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Text(
                                                                          '\$${245}',
                                                                          style: TextStyle(
                                                                              fontFamily: StringConfig.poppins,
                                                                              fontSize: size13,
                                                                              fontWeight: FontWeight.w600,
                                                                              color: titleColor),
                                                                        ),
                                                                        SizedBox(
                                                                          width:
                                                                              size10,
                                                                        ),
                                                                        Text(
                                                                          '\$${245}',
                                                                          style:
                                                                              TextStyle(
                                                                            decoration:
                                                                                TextDecoration.lineThrough,
                                                                            fontFamily:
                                                                                StringConfig.poppins,
                                                                            color:
                                                                                dollarTextColor,
                                                                            fontWeight:
                                                                                FontWeight.w400,
                                                                            fontSize:
                                                                                size11,
                                                                          ),
                                                                        )
                                                                      ])),
                                                              Row(children: [
                                                                Row(children: [
                                                                  const Text(
                                                                    StringConfig
                                                                        .stringColor,
                                                                    style: TextStyle(
                                                                        fontFamily:
                                                                            StringConfig
                                                                                .poppins,
                                                                        fontSize:
                                                                            size11,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        color:
                                                                            dollarTextColor),
                                                                  ),
                                                                  SizedBox(
                                                                    width:
                                                                        size10,
                                                                    height:
                                                                        size10,
                                                                    child:
                                                                        Container(
                                                                      decoration: BoxDecoration(
                                                                          borderRadius: BorderRadius.circular(
                                                                              height40),
                                                                          color:
                                                                              Colors.black),
                                                                    ),
                                                                  )
                                                                ]),
                                                                const Padding(
                                                                    padding: EdgeInsets
                                                                            .only(
                                                                        left:
                                                                            8.0),
                                                                    child: Row(
                                                                        children: [
                                                                          Text(
                                                                            StringConfig.stringSize,
                                                                            style: TextStyle(
                                                                                fontFamily: StringConfig.poppins,
                                                                                fontSize: size11,
                                                                                fontWeight: FontWeight.w400,
                                                                                color: dollarTextColor),
                                                                          ),
                                                                          Text(
                                                                            StringConfig.S,
                                                                            style: TextStyle(
                                                                                fontFamily: StringConfig.poppins,
                                                                                fontSize: size11,
                                                                                fontWeight: FontWeight.w400,
                                                                                color: titleColor),
                                                                          ),
                                                                        ]))
                                                              ])
                                                            ]))
                                                  ])),
                                              Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: size11),
                                                  child: GestureDetector(
                                                    child: Image.asset(
                                                      AssetImagePaths.delete,
                                                      height: height20,
                                                      width: height20,
                                                    ),
                                                    onTap: () {
                                                      Get.toNamed(AppRoutes
                                                          .emptyShoppingScreen);
                                                    },
                                                  ))
                                            ])))
                                  ])),
                          const Column(children: [
                            Text(
                              StringConfig.addDiscountCode,
                              style: TextStyle(
                                fontFamily: StringConfig.poppins,
                                color: titleColor,
                                fontWeight: FontWeight.w400,
                                fontSize: height18,
                              ),
                            )
                          ]),
                          Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: height20),
                              child: Container(
                                  height: height48,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(size8),
                                    border: Border.all(
                                      color: appColor,
                                    ),
                                  ),
                                  child: const Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: height15),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              StringConfig.cCFF044213214,
                                              style: TextStyle(
                                                  fontFamily:
                                                      StringConfig.poppins,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: height14,
                                                  color: titleColor),
                                            ),
                                            Text(
                                              StringConfig.apply,
                                              style: TextStyle(
                                                  fontFamily:
                                                      StringConfig.poppins,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: size12,
                                                  color: appColor),
                                            ),
                                          ])))),
                          Container(
                              decoration: BoxDecoration(
                                  color: wightColor.withOpacity(size0_7),
                                  borderRadius: BorderRadius.circular(size8),
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 5.0,
                                      color: dollarTextColor.withOpacity(0.2),
                                    )
                                  ]),
                              child: const Padding(
                                  padding: EdgeInsets.all(size10),
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
                                      height: size5,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          StringConfig.delivery,
                                          style: TextStyle(
                                              fontFamily: StringConfig.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: height14,
                                              color: nuColor),
                                        ),
                                        Text(
                                          "\$${20}",
                                          style: TextStyle(
                                              fontFamily: StringConfig.poppins,
                                              fontWeight: FontWeight.w500,
                                              fontSize: height14,
                                              color: titleColor),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: size5,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          StringConfig.discountCoupon,
                                          style: TextStyle(
                                              fontFamily: StringConfig.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: height14,
                                              color: nuColor),
                                        ),
                                        Text(
                                          "\$${0}",
                                          style: TextStyle(
                                              fontFamily: StringConfig.poppins,
                                              fontWeight: FontWeight.w500,
                                              fontSize: height14,
                                              color: titleColor),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: size5,
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
                                          ),
                                        ])
                                  ]))),
                          Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: height20),
                              child: ButtonCommon(
                                buttonColor: appColor,
                                textColor: wightColor,
                                text: StringConfig.placeOrder,
                                onTap: () {
                                  Get.toNamed(AppRoutes.couponSuccsessSCreen);
                                },
                              ))
                        ])))));
  }
}
