import 'package:ecommerce_ui_kit/util/string_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../config/asset_image_paths.dart';
import '../../../config/routes/app_routes.dart';
import '../../../util/colors.dart';
import '../oredr_info_screen.dart';

// ignore: must_be_immutable
class OrderContainerWidget extends StatelessWidget {
  String? text;
  Color? buttonColor;

  OrderContainerWidget({super.key, this.text, this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(15),
        child: Container(
            height: 205,
            width: double.infinity,
            decoration: BoxDecoration(
              color: wightColor.withOpacity(0.7),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: dollarTextColor.withOpacity(0.1),
                  spreadRadius: 2,
                  blurRadius: 2,
                  offset: const Offset(0.1, 0.1), // changes position of shadow
                ),
              ],
            ),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 4, right: 4),
                    child: Container(
                      height: 20,
                      width: 62,
                      decoration: BoxDecoration(
                          color: buttonColor!,
                          borderRadius: BorderRadius.circular(3)),
                      child: Center(
                        child: Text(text!,
                            style: const TextStyle(
                              fontFamily: StringConfig.poppins,
                              color: wightColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 11,
                            )),
                      ),
                    ),
                  ),
                ],
              ),
              Row(children: [
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: GestureDetector(
                      child: Image.asset(
                        AssetImagePaths.proDetail,
                        width: 110,
                      ),
                      onTap: () {
                        Get.toNamed(AppRoutes.productDetailScreen);
                      },
                    )),
                const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                       Text(StringConfig.lockiesShirt,
                          style: TextStyle(
                            fontFamily: StringConfig.poppins,
                            color: titleColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          )),
                      Text("Recycle Boucle Knit Cardigan Pink",
                          style: TextStyle(
                            fontFamily: StringConfig.poppins,
                            color: greyColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 11,
                          )),
                      Row(
                        children: [
                          Text(
                            '\$${245}',
                            style: TextStyle(
                                fontFamily: StringConfig.poppins,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: titleColor),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '\$${400}',
                            style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              fontFamily: StringConfig.poppins,
                              color: dollarTextColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 11,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text("Order id :",
                              style: TextStyle(
                                fontFamily: StringConfig.poppins,
                                color: titleColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 11,
                              )),
                          SizedBox(
                            width: 27,
                          ),
                          Text("#6858167",
                              style: TextStyle(
                                fontFamily: StringConfig.poppins,
                                color: greyColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 11,
                              ))
                        ],
                      ),
                      Row(children: [
                        Text("Order date:",
                            style: TextStyle(
                              fontFamily: StringConfig.poppins,
                              color: titleColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 11,
                            )),
                        SizedBox(
                          width: 15,
                        ),
                        Text("05-25-2022",
                            style: TextStyle(
                              fontFamily: StringConfig.poppins,
                              color: greyColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 11,
                            ))
                      ]),
                      Row(children: [
                        Text("Qty  :",
                            style: TextStyle(
                              fontFamily: StringConfig.poppins,
                              color: titleColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 11,
                            )),
                        SizedBox(
                          width: 50,
                        ),
                        Text("1",
                            style: TextStyle(
                              fontFamily: StringConfig.poppins,
                              color: greyColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 11,
                            ))
                      ])
                    ])
              ]),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                color: codeColor,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Order Details",
                            style: TextStyle(
                              fontFamily: StringConfig.poppins,
                              color: titleColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            )),
                        GestureDetector(
                          child: Image.asset(
                            AssetImagePaths.arrowRight,
                            height: 20,
                            width: 20,
                          ),
                          onTap: () {
                            Get.to(OrderInfoScreen());
                          },
                        )
                      ]))
            ])));
  }
}
