import 'package:ecommerce_ui_kit/ui/order_screen/widget_order/order_info_widget.dart';
import 'package:ecommerce_ui_kit/util/string_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../config/asset_image_paths.dart';
import '../../config/routes/app_routes.dart';
import '../../util/colors.dart';
import '../../util/size_config.dart';
import '../../widget/appbar_common.dart';
import '../home_screen/widget_home/product_detail.dart';

// ignore: must_be_immutable
class OrderInfoScreen extends StatelessWidget {
  OrderInfoScreen({Key? key}) : super(key: key);
  List<Map<String, dynamic>> suggestList = [
    {
      "imagePng": AssetImagePaths.heartDrawer,
      "detailImage": AssetImagePaths.manthard,
    },
    {
      "imagePng": AssetImagePaths.heartDrawer,
      "detailImage": AssetImagePaths.mansecod,
    },
  ];

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
                    trailingIcon: AssetImagePaths.search,
                    trailingOnTap: () {
                      Get.toNamed(AppRoutes.searchScreen);
                    },
                    text: StringConfig.myOrders,
                  ),
                )),
            body: SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.all(height15),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              height: Get.height / 4.3,
                              decoration: BoxDecoration(
                                color: wightColor.withOpacity(0.7),
                                borderRadius: BorderRadius.circular(size8),
                                boxShadow: [
                                  BoxShadow(
                                    color: dollarTextColor.withOpacity(size0_1),
                                    spreadRadius: size2,
                                    blurRadius: size2,
                                    offset: const Offset(size0_1,
                                        size0_1), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Column(children: [
                                Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: height10),
                                        child: Image.asset(
                                          AssetImagePaths.proDetail,
                                          height: height170,
                                          width: height110,
                                        ),
                                      ),
                                      const Padding(
                                          padding:  EdgeInsets.only(
                                              top: height25),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                    StringConfig.lockiesShirt,
                                                    style: TextStyle(
                                                      fontFamily:
                                                          StringConfig.poppins,
                                                      color: titleColor,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: height16,
                                                    )),
                                                Text(
                                                    StringConfig
                                                        .recycleBoucleKnitCardiganPink,
                                                    style: TextStyle(
                                                      fontFamily:
                                                          StringConfig.poppins,
                                                      color: greyColor,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: size11,
                                                    )),
                                                Row(children: [
                                                  Text(
                                                    '\$${245}',
                                                    style: TextStyle(
                                                        fontFamily: StringConfig
                                                            .poppins,
                                                        fontSize: height16,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: titleColor),
                                                  ),
                                                  SizedBox(
                                                    width: size5,
                                                  ),
                                                  Text('\$${400}',
                                                      style: TextStyle(
                                                        decoration:
                                                            TextDecoration
                                                                .lineThrough,
                                                        fontFamily: StringConfig
                                                            .poppins,
                                                        color: dollarTextColor,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: size11,
                                                      ))
                                                ]),
                                                SizedBox(
                                                  height: size5,
                                                ),
                                                Row(
                                                  children: [
                                                    Text(StringConfig.orderId,
                                                        style: TextStyle(
                                                          fontFamily:
                                                              StringConfig
                                                                  .poppins,
                                                          color: titleColor,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: size11,
                                                        )),
                                                    SizedBox(
                                                      width: height27,
                                                    ),
                                                    Text(
                                                        StringConfig
                                                            .string_6858167,
                                                        style: TextStyle(
                                                          fontFamily:
                                                              StringConfig
                                                                  .poppins,
                                                          color: greyColor,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: size11,
                                                        ))
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Text(StringConfig.orderDate,
                                                        style: TextStyle(
                                                          fontFamily:
                                                              StringConfig
                                                                  .poppins,
                                                          color: titleColor,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: size11,
                                                        )),
                                                    SizedBox(
                                                      width: height15,
                                                    ),
                                                    Text(
                                                        StringConfig
                                                            .string_05252022,
                                                        style: TextStyle(
                                                          fontFamily:
                                                              StringConfig
                                                                  .poppins,
                                                          color: greyColor,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: size11,
                                                        ))
                                                  ],
                                                ),
                                                Row(children: [
                                                  Text(StringConfig.qty,
                                                      style: TextStyle(
                                                        fontFamily: StringConfig
                                                            .poppins,
                                                        color: titleColor,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: size11,
                                                      )),
                                                  SizedBox(
                                                    width: height50,
                                                  ),
                                                  Text(StringConfig.string_1,
                                                      style: TextStyle(
                                                        fontFamily: StringConfig
                                                            .poppins,
                                                        color: greyColor,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: size11,
                                                      ))
                                                ])
                                              ]))
                                    ])
                              ])),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: size12),
                            child: Text(StringConfig.shippingAddress,
                                style: TextStyle(
                                  fontFamily: StringConfig.poppins,
                                  color: titleColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: height16,
                                )),
                          ),
                          const OrderRowWidget(
                            icon: AssetImagePaths.marker,
                            title: StringConfig.wadeWarren,
                            decp: StringConfig.royalLnMesaNewJersey,
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: size12),
                            child: Text(StringConfig.paymentInformation,
                                style: TextStyle(
                                  fontFamily: StringConfig.poppins,
                                  color: titleColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: height16,
                                )),
                          ),
                          Container(
                              height: height60,
                              decoration: BoxDecoration(
                                color: wightColor.withOpacity(0.7),
                                borderRadius: BorderRadius.circular(size8),
                                boxShadow: [
                                  BoxShadow(
                                    color: dollarTextColor.withOpacity(size0_1),
                                    spreadRadius: size2,
                                    blurRadius: size2,
                                    offset: const Offset(size0_1,
                                        size0_1), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Padding(
                                  padding: const EdgeInsets.all(6),
                                  child: Row(children: [
                                    Container(
                                        height: height40,
                                        width: height40,
                                        decoration: BoxDecoration(
                                            color: wightColor.withOpacity(0.7),
                                            borderRadius:
                                                BorderRadius.circular(size8),
                                            border:
                                                Border.all(color: appColor)),
                                        child: Padding(
                                            padding:
                                                const EdgeInsets.all(size4),
                                            child: Image.asset(
                                              AssetImagePaths.mastercard,
                                              height: height15,
                                              width: height15,
                                            ))),
                                    const Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 8),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(StringConfig.paymentMethod,
                                                  style: TextStyle(
                                                    fontFamily:
                                                        StringConfig.poppins,
                                                    color: greyColor,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: size13,
                                                  )),
                                              Text(StringConfig.mastercard,
                                                  style: TextStyle(
                                                    fontFamily:
                                                        StringConfig.poppins,
                                                    color: textfeildColor,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: size12,
                                                  ))
                                            ])),
                                    const Spacer(),
                                    const Icon(
                                      Icons.arrow_forward_ios_outlined,
                                      size: height15,
                                      color: titleColor,
                                    )
                                  ]))),
                          const SizedBox(
                            height: height17,
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: size12),
                            child: Text(StringConfig.orderSummry,
                                style: TextStyle(
                                  fontFamily: StringConfig.poppins,
                                  color: titleColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: height16,
                                )),
                          ),
                          Column(children: [
                            const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    StringConfig.items,
                                    style: TextStyle(
                                        fontFamily: StringConfig.poppins,
                                        fontWeight: FontWeight.w400,
                                        fontSize: height14,
                                        color: nuColor),
                                  ),
                                  Text(
                                    "\$${120}",
                                    style: TextStyle(
                                        fontFamily: StringConfig.poppins,
                                        fontWeight: FontWeight.w500,
                                        fontSize: height14,
                                        color: titleColor),
                                  ),
                                ]),
                            const SizedBox(
                              height: size5,
                            ),
                            const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    StringConfig.postagePacking,
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
                                  )
                                ]),
                            const SizedBox(
                              height: size5,
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  StringConfig.discountCoupons,
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
                            const Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: size12),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        StringConfig.orderTotal,
                                        style: TextStyle(
                                            fontFamily: StringConfig.poppins,
                                            fontWeight: FontWeight.w600,
                                            fontSize: height16,
                                            color: titleColor),
                                      ),
                                      Text(
                                        "\$${138}",
                                        style: TextStyle(
                                            fontFamily: StringConfig.poppins,
                                            fontWeight: FontWeight.w600,
                                            fontSize: height16,
                                            color: titleColor),
                                      )
                                    ])),
                            const Padding(
                                padding:
                                    EdgeInsets.symmetric(vertical: height14),
                                child: Text(StringConfig.yOUMAYALSOLIKE,
                                    style: TextStyle(
                                      fontFamily: StringConfig.poppins,
                                      color: titleColor,
                                      fontWeight: FontWeight.w400,
                                      fontSize: height20,
                                    ))),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: height14),
                              child: Center(
                                  child: Image.asset(
                                AssetImagePaths.devider,
                                height: size10,
                              )),
                            ),
                            Row(children: [
                              ProductDetail(
                                imagePng: AssetImagePaths.heartDrawer,
                                detailImage: AssetImagePaths.proDetail,
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              ProductDetail(
                                imagePng: AssetImagePaths.heartDrawer,
                                detailImage: AssetImagePaths.secondgril,
                              ),
                            ])
                          ])
                        ])))));
  }
}


