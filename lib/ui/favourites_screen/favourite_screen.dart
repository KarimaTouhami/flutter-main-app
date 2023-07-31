import 'package:ecommerce_ui_kit/ui/favourites_screen/widget_favourite/product_common.dart';
import 'package:ecommerce_ui_kit/util/string_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../config/asset_image_paths.dart';
import '../../util/colors.dart';
import '../../util/size_config.dart';
import '../../widget/appbar_common.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

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
                    text: StringConfig.myFavorite,
                  ),
                )),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: height12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              StringConfig.string_2items,
                              style: TextStyle(
                                  fontFamily: StringConfig.poppins,
                                  fontSize: height12,
                                  fontWeight: FontWeight.w400,
                                  color: greyColor),
                            )
                          ]
                        )
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ProductDetailCommon(
                            trailingOnTap: () {
                              removedBottomSheet(context);
                            },
                          ),
                          ProductDetailCommon(
                            trailingOnTap: () {
                              removedBottomSheet(context);
                            },
                          )
                        ]
                      )
                    ])
              )
            )));
  }

  removedBottomSheet(BuildContext context) {
    return showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        elevation: 10,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(height25),
            topRight: Radius.circular(height25),
          ),
        ),
        builder: (BuildContext context) {
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: height20),
              child: SingleChildScrollView(
                  child: Padding(
                padding: const EdgeInsets.all(height15),
                child: Column(children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          StringConfig.removedMyFavorite,
                          style: TextStyle(
                              color: titleColor,
                              fontWeight: FontWeight.w600,
                              fontSize: height20),
                        ),
                        InkWell(
                          child: Image.asset(
                            AssetImagePaths.crossic,
                            height: height12,
                            color: titleColor,
                          ),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        )
                      ]),
                  const SizedBox(
                    height: height25,
                  ),
                  Container(
                      height: Get.height / 8,
                      decoration: BoxDecoration(
                        color: wightColor.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(size10),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: size10,
                            color: dollarTextColor.withOpacity(0.2),
                          )
                        ]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: size12),
                        child: Row(children: [
                          Image.asset(
                            AssetImagePaths.proDetail,
                            height: width77,
                          ),
                          const Padding(
                              padding: EdgeInsets.all(height15),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(StringConfig.lockiesShirt,
                                              style: TextStyle(
                                                fontFamily:
                                                    StringConfig.poppins,
                                                color: titleColor,
                                                fontWeight: FontWeight.w500,
                                                fontSize: height14,
                                              )),
                                          Text(StringConfig.string_50off,
                                              style: TextStyle(
                                                  fontFamily:
                                                      StringConfig.poppins,
                                                  fontSize: size9,
                                                  fontWeight: FontWeight.w400,
                                                  color: redColor)),
                                        ]),
                                    Row(children: [
                                      Text(
                                        '\$${245}',
                                        style: TextStyle(
                                            fontFamily: StringConfig.poppins,
                                            fontSize: size11,
                                            fontWeight: FontWeight.w500,
                                            color: titleColor),
                                      ),
                                      SizedBox(
                                        width: size5,
                                      ),
                                      Text('\$${400}',
                                          style: TextStyle(
                                            decoration:
                                                TextDecoration.lineThrough,
                                            fontFamily: StringConfig.poppins,
                                            color: dollarTextColor,
                                            fontWeight: FontWeight.w400,
                                            fontSize: size9,
                                          ))
                                    ])
                                  ]))
                        ])
                      )),
                  const SizedBox(
                    height: height20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        child: Container(
                          width: Get.width / 2.3,
                          height: height45,
                          decoration: BoxDecoration(
                              color: rowColor,
                              borderRadius: BorderRadius.circular(height53)),
                          child: const Center(
                              child: Text(
                            StringConfig.cancels,
                            style: TextStyle(
                              color: titleColor,
                              fontFamily: StringConfig.poppins,
                              fontWeight: FontWeight.w500,
                              fontSize: height16,
                            )
                          ))
                        ),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      GestureDetector(
                        child: Container(
                          height: height45,
                          width: Get.width / 2.3,
                          decoration: BoxDecoration(
                              color: appColor,
                              borderRadius: BorderRadius.circular(height53)),
                          child: const Center(
                              child: Text(
                            StringConfig.remove,
                            style: TextStyle(
                              color: wightColor,
                              fontFamily: StringConfig.poppins,
                              fontWeight: FontWeight.w500,
                              fontSize: height16,
                            ),
                          )),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  )
                ]),
              )),
            );
          });
        });
  }
}
