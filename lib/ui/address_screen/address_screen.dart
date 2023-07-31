import 'package:ecommerce_ui_kit/config/asset_image_paths.dart';
import 'package:ecommerce_ui_kit/ui/loginscreen/widget_login/common_button.dart';
import 'package:ecommerce_ui_kit/util/string_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../config/routes/app_routes.dart';
import '../../util/colors.dart';
import '../../util/size_config.dart';
import '../../widget/appbar_common.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({Key? key}) : super(key: key);

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  String selectedOption = StringConfig.work;

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
                    text: StringConfig.address,
                    trailingIcon: AssetImagePaths.heartic,
                    trailingOnTap: () {
                      Get.toNamed(AppRoutes.favouriteScreen);
                    },
                  ),
                )),
            body: Column(
                children: [
                  const SizedBox(height: size10),
              const Text(StringConfig.selectDeliveryAddress,
                  style: TextStyle(
                    fontFamily: StringConfig.poppins,
                    color: titleColor,
                    fontWeight: FontWeight.w500,
                    fontSize: height14,
                  )),
              const SizedBox(height: size10),
              Padding(
                  padding: const EdgeInsets.all(height15),
                    child: Container(
                        height: height50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: appColor
                          ),
                            borderRadius: BorderRadius.circular(height55),
                            ),
                        child: GestureDetector(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:[
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
              const SizedBox(height: height20),
              Padding(
                padding: const EdgeInsets.only(left: height15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: height20,
                          width: height50,
                          decoration: BoxDecoration(
                              color: appColor,
                              borderRadius: BorderRadius.circular(size3)),
                          child: const Center(
                            child: Text(StringConfig.defaults,
                                style: TextStyle(
                                  fontFamily: StringConfig.poppins,
                                  color: wightColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: size10,
                                )),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: size5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              AssetImagePaths.shopbag,
                              height: height18,
                              width: height18,
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
                          ],
                        ),
                        Radio(
                            value: StringConfig.work,
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
                    const Text(
                      StringConfig.wadeWarren5550119,
                      style: TextStyle(
                        fontSize: height12,
                        height: height1_9,
                        fontFamily: StringConfig.poppins,
                        fontWeight: FontWeight.w400,
                        color: greyColor,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          StringConfig.royalLnMesaNewJersey45463,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: height12,
                            height: height1_6,
                            fontFamily: StringConfig.poppins,
                            fontWeight: FontWeight.w400,
                            color: greyColor,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: size12),
                          child: Image.asset(
                            AssetImagePaths.erase,
                            height: height24,
                            width: height24,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: height15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: size5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                AssetImagePaths.home,
                                height: height22,
                                width: height22,
                              ),
                              const SizedBox(
                                width: width11,
                              ),
                              const Text(StringConfig.home,
                                  style: TextStyle(
                                    fontFamily: StringConfig.poppins,
                                    color: titleColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: height16,
                                  ))
                            ]
                          ),
                          Radio(
                              value: StringConfig.home,
                              groupValue: selectedOption,
                              activeColor: greyColor,
                              focusColor: Colors.grey,
                              hoverColor: Colors.grey,
                              fillColor: MaterialStateColor.resolveWith(
                                  (states) => appColor),
                              onChanged: (value) {
                                setState(() {
                                  selectedOption = value!;
                                });
                              })
                        ]
                      ),
                      const Text(
                        StringConfig.wadeWarren5550119,
                        style: TextStyle(
                          fontSize: height12,
                          height: height1_9,
                          fontFamily: StringConfig.poppins,
                          fontWeight: FontWeight.w400,
                          color: greyColor,
                        )
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            StringConfig.royalLnMesaNewJersey45463,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: height12,
                              height: height1_6,
                              fontFamily: StringConfig.poppins,
                              fontWeight: FontWeight.w400,
                              color: greyColor,
                            )
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: height12),
                            child: Image.asset(
                              AssetImagePaths.erase,
                              height: height24,
                              width: height24,
                            ),
                          )
                        ]
                      )
                    ]
                  )
                )
              ),
              Padding(
                padding: const EdgeInsets.all(height15),
                child: ButtonCommon(
                  text: StringConfig.continues,
                  buttonColor: appColor,
                  textColor: wightColor,
                  onTap: () {
                    Get.toNamed(AppRoutes.paymentScreen);
                  },
                )
              )
            ])));
  }
}
