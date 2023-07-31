import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:ecommerce_ui_kit/config/asset_image_paths.dart';
import 'package:ecommerce_ui_kit/ui/categories_screen/widget/appbar_common.dart';
import 'package:ecommerce_ui_kit/ui/product_details_screen/widget_detail/common_text.dart';
import 'package:ecommerce_ui_kit/ui/product_details_screen/widget_detail/descripCommon.dart';
import 'package:ecommerce_ui_kit/ui/product_details_screen/widget_detail/progressbar.dart';
import 'package:ecommerce_ui_kit/ui/product_details_screen/widget_detail/review_text.dart';
import 'package:ecommerce_ui_kit/util/colors.dart';
import 'package:ecommerce_ui_kit/util/string_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/productdetail_controller.dart';
import '../../config/routes/app_routes.dart';
import '../../util/size_config.dart';
import '../home_screen/widget_home/product_detail.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({Key? key}) : super(key: key);

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  final ProDetailController controller = Get.put(ProDetailController());
  final List<String> _imageList = [
    AssetImagePaths.proDetail,
    AssetImagePaths.secondgril,
    AssetImagePaths.mansecod,
    AssetImagePaths.manthard,
    AssetImagePaths.proDetail,
  ];
  final List<String> sizes = ["S", 'M', "L", "XL", "XS", "XXS"];

  String selectedOption = 'Free Flat Rate Shipping';

  final List<Color> colors = [
    blackColor,
    musterColor,
    solidColor,
    lightRedColor,
    appColor,
    blueColor,
  ];
  int _currentIndex = 0;
  int currentIndex = 0;
  int currentSizeIndex = 0;

  onChange(int index, CarouselPageChangedReason reason) {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: PreferredSize(
                preferredSize: const Size.fromHeight(height100),
                child: Padding(
                    padding: const EdgeInsets.only(
                        right: height15,
                        left: height10,
                        top: height13,
                        bottom: height13),
                    child: CommonCategoryAppbar(
                      leadingIcon: AssetImagePaths.arrow,
                      leadingOnTap: () {
                        Get.back();
                      },
                    ))),
            body: SingleChildScrollView(
                child: Column(children: [
              Stack(children: [
                SizedBox(
                    width: Get.width,
                    child: CarouselSlider(
                        items: _imageList.map((image) {
                          return Image.asset(image);
                        }).toList(),
                        options: CarouselOptions(
                            viewportFraction: 1,
                            height: Get.height * .5,
                            autoPlayAnimationDuration:
                                const Duration(milliseconds: 800),
                            onPageChanged: (index, reason) {
                              setState(() {
                                _currentIndex = index;
                              });
                            }))),
                Positioned(
                    bottom: height10,
                    left: height130,
                    child: DotsIndicator(
                        dotsCount: _imageList.length,
                        position: _currentIndex.toDouble(),
                        decorator: DotsDecorator(
                          shape: const Border(),
                          activeShape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(size4)),
                          color: greyColor.withOpacity(0.6),
                          activeColor: appColor,
                        ))),
                Positioned(
                  bottom: Get.height / 60,
                  right: Get.height / 30,
                  child: Image.asset(AssetImagePaths.zoomimage,
                      height: height20, width: height20),
                ),
              ]),
              Column(children: [
                Container(
                    width: Get.width,
                    decoration: const BoxDecoration(
                      color: wightColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(height25),
                        topRight: Radius.circular(height25),
                      ),
                    ),
                    child: Padding(
                        padding: const EdgeInsets.all(height15),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children:  [
                                          Text(
                                            StringConfig.lockiesShirt,
                                            style: TextStyle(
                                              fontFamily: StringConfig.poppins,
                                              color: titleColor,
                                              fontWeight: FontWeight.w500,
                                              fontSize: height20,
                                            ),
                                          ),
                                          SizedBox(
                                            width: size4,
                                          ),
                                          Text(StringConfig.string_50off,
                                              style: TextStyle(
                                                fontFamily:
                                                    StringConfig.poppins,
                                                color: error,
                                                height: 2.8,
                                                fontWeight: FontWeight.w400,
                                                fontSize: size10,
                                              ))
                                        ]),
                                    Row(children: [
                                      SizedBox(
                                          height: height25,
                                          child: InkWell(
                                              onTap: () =>
                                                  controller.decrementCounter(),
                                              child: const CircleAvatar(
                                                  backgroundColor: appColor,
                                                  child: Icon(
                                                    Icons.remove,
                                                    size: height18,
                                                    color: wightColor,
                                                  )))),
                                      Obx(() => Text(
                                            '${controller.item}',
                                            style: const TextStyle(
                                                color: appColor,
                                                fontFamily:
                                                    StringConfig.poppins,
                                                fontWeight: FontWeight.w400,
                                                fontSize: height18),
                                          )),
                                      SizedBox(
                                          height: height25,
                                          child: InkWell(
                                              onTap: () =>
                                                  controller.incrementCounter(),
                                              child: const CircleAvatar(
                                                backgroundColor: appColor,
                                                child: Icon(
                                                  Icons.add,
                                                  size: height18,
                                                  color: wightColor,
                                                ),
                                              )))
                                    ])
                                  ]),
                              const Text(
                                StringConfig.menRegularFitTwillCargoTrousers,
                                style: TextStyle(
                                  fontFamily: StringConfig.poppins,
                                  color: textfeildColor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: size12,
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: size7),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const Text(
                                          '\$${245}',
                                          style: TextStyle(
                                              fontFamily: StringConfig.poppins,
                                              fontSize: height16,
                                              fontWeight: FontWeight.w500,
                                              color: titleColor),
                                        ),
                                        const SizedBox(
                                          width: size5,
                                        ),
                                        const Text(
                                          '\$${430}',
                                          style: TextStyle(
                                            decoration:
                                                TextDecoration.lineThrough,
                                            fontFamily: StringConfig.poppins,
                                            color: dollarTextColor,
                                            fontWeight: FontWeight.w400,
                                            fontSize: size11,
                                          ),
                                        ),
                                        const SizedBox(width: size10),
                                        const Icon(
                                          Icons.star,
                                          size: height17,
                                          color: appColor,
                                        ),
                                        const Text(
                                            StringConfig.string_350Reviews,
                                            style: TextStyle(
                                                fontFamily:
                                                    StringConfig.poppins,
                                                color: dollarTextColor,
                                                fontWeight: FontWeight.w400,
                                                fontSize: size11)),
                                        Expanded(
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                              Image.asset(
                                                AssetImagePaths.redHeart,
                                                height: height13,
                                                width: height13,
                                              ),
                                            ]))
                                      ])),
                              Row(children: [
                                const Text(
                                  StringConfig.color,
                                  style: TextStyle(
                                    fontFamily: StringConfig.poppins,
                                    color: dollarTextColor,
                                    fontWeight: FontWeight.w400,
                                    fontSize: size12,
                                  ),
                                ),
                                const SizedBox(
                                  width: size3,
                                ),
                                SizedBox(
                                    height: height50,
                                    width: Get.width / 1.3,
                                    child: Row(
                                      children: List.generate(
                                          6,
                                          (index) => GestureDetector(
                                                child: Container(
                                                  height: height18,
                                                  width: height18,
                                                  padding: currentIndex == index
                                                      ? const EdgeInsets.all(
                                                          1.7)
                                                      : EdgeInsets.zero,
                                                  margin:
                                                      const EdgeInsets.all(5),
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    border: Border.all(
                                                        color: currentIndex ==
                                                                index
                                                            ? greyColor
                                                            : wightColor),
                                                  ),
                                                  child: CircleAvatar(
                                                    backgroundColor:
                                                        colors[index],
                                                  ),
                                                ),
                                                onTap: () {
                                                  currentIndex = index;
                                                  setState(() {});
                                                },
                                              )),
                                    ))
                              ]),
                              const SizedBox(
                                height: size8,
                              ),
                              Row(children: [
                                const Text(
                                  StringConfig.size,
                                  style: TextStyle(
                                    fontFamily: StringConfig.poppins,
                                    color: dollarTextColor,
                                    fontWeight: FontWeight.w400,
                                    fontSize: size12,
                                  ),
                                ),
                                const SizedBox(
                                  width: size8,
                                ),
                                SizedBox(
                                    height: height26,
                                    child: Row(children: [
                                      ListView(
                                          shrinkWrap: true,
                                          scrollDirection: Axis.horizontal,
                                          children: sizes.map((e) {
                                            var index = sizes.indexOf(e);
                                            return Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 5.0),
                                                    child: GestureDetector(
                                                      child: Container(
                                                        height: height27,
                                                        width: height27,
                                                        decoration:
                                                            BoxDecoration(
                                                          border: Border.all(
                                                              color: currentSizeIndex ==
                                                                      index
                                                                  ? appColor
                                                                  : codeColor),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5),
                                                          color:
                                                              currentSizeIndex ==
                                                                      index
                                                                  ? appColor
                                                                  : wightColor,
                                                        ),
                                                        child: Center(
                                                          child: Text(
                                                            sizes[index],
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  StringConfig
                                                                      .poppins,
                                                              color: currentSizeIndex ==
                                                                      index
                                                                  ? wightColor
                                                                  : titleColor,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              fontSize: size11,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      onTap: () {
                                                        currentSizeIndex =
                                                            index;
                                                        setState(() {});
                                                      },
                                                    ),
                                                  ),
                                                ]);
                                          }).toList()),
                                      const SizedBox(
                                        width: 62,
                                      )
                                    ]))
                              ]),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: height25),
                                child: Container(
                                    height: height50,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(height55),
                                      color: appColor,
                                    ),
                                    child: InkWell(
                                        onTap: () {
                                          Get.toNamed(AppRoutes.shoppingScreen);
                                        },
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                AssetImagePaths.addressPlus,
                                                width: height17,
                                                height: height17,
                                                color: wightColor,
                                              ),
                                              const SizedBox(
                                                width: width10,
                                              ),
                                              const Text(StringConfig.addToCart,
                                                  style: TextStyle(
                                                    color: wightColor,
                                                    fontFamily:
                                                        StringConfig.poppins,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: height16,
                                                  ))
                                            ]))),
                              ),
                              TextCommon(
                                  text: StringConfig.materials,
                                  description:
                                      StringConfig.weWorkWithMonitoring),
                              const SizedBox(
                                height: size5,
                              ),
                              TextCommon(
                                text: StringConfig.care,
                                description: StringConfig.toKeepYourJackets,
                              ),
                              const Padding(
                                  padding:
                                      EdgeInsets.symmetric(vertical: size12),
                                  child: Text(StringConfig.cusToMerReviews,
                                      style: TextStyle(
                                        fontFamily: StringConfig.poppins,
                                        color: titleColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: height16,
                                      ))),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    AssetImagePaths.detailgril1,
                                    height: height110,
                                    width: height110,
                                  ),
                                  Image.asset(
                                    AssetImagePaths.detailgril2,
                                    height: height110,
                                    width: height110,
                                  ),
                                  Image.asset(
                                    AssetImagePaths.deatilgril3,
                                    height: height110,
                                    width: height110,
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: size12),
                                child: ReviewTextCommon(
                                    text: StringConfig
                                        .weWorkWithMonitoringProgrammes),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: size12),
                                child: ReviewTextCommon(
                                    text: StringConfig
                                        .weWorkWithMonitoringProgrammes),
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(StringConfig.seeMore,
                                      style: TextStyle(
                                        fontFamily: StringConfig.poppins,
                                        color: appColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: height16,
                                      )),
                                ],
                              ),
                              const Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(StringConfig.string_4_2,
                                      style: TextStyle(
                                        fontFamily: StringConfig.poppins,
                                        color: titleColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: height26,
                                      )),
                                  Text("/5",
                                      style: TextStyle(
                                        fontFamily: StringConfig.poppins,
                                        color: nuColor,
                                        height: size2,
                                        fontWeight: FontWeight.w500,
                                        fontSize: height16,
                                      )),
                                ],
                              ),
                              const Row(children: [
                                Icon(Icons.star,
                                    size: height16, color: appColor),
                                Icon(Icons.star,
                                    size: height16, color: appColor),
                                Icon(Icons.star,
                                    size: height16, color: appColor),
                                Icon(Icons.star,
                                    size: height16, color: appColor),
                                Icon(
                                  Icons.star,
                                  size: height16,
                                  color: starColor,
                                )
                              ]),
                              CustomProgressBar(
                                text: StringConfig.string_5Star,
                                width: Get.width / 1.5,
                                value: 90,
                                totalValue: 100,
                              ),
                              CustomProgressBar(
                                text: StringConfig.string_4Star,
                                width: Get.width / 1.5,
                                value: 80,
                                totalValue: 100,
                              ),
                              CustomProgressBar(
                                text: StringConfig.string_3Star,
                                width: Get.width / 1.5,
                                value: 60,
                                totalValue: 100,
                              ),
                              CustomProgressBar(
                                text: StringConfig.string_2Star,
                                width: Get.width / 1.5,
                                value: 20,
                                totalValue: 100,
                              ),
                              CustomProgressBar(
                                text: StringConfig.string_1Star,
                                width: Get.width / 1.5,
                                value: 0,
                                totalValue: 100,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              DiscretionCommon(
                                imagePng: AssetImagePaths.notBleachIc,
                                text: StringConfig.doNotUseBleach,
                              ),
                              DiscretionCommon(
                                imagePng: AssetImagePaths.notTumble,
                                text: StringConfig.doNotTumbleDry,
                              ),
                              DiscretionCommon(
                                imagePng: AssetImagePaths.notWash,
                                text: StringConfig.dryCleanWith,
                              ),
                              DiscretionCommon(
                                imagePng: AssetImagePaths.lowTemperature,
                                text: StringConfig.ironAtaMaximum,
                              ),
                              const SizedBox(
                                height: size10,
                              ),
                              const Text(
                                StringConfig.care,
                                style: TextStyle(
                                  fontFamily: StringConfig.poppins,
                                  color: titleColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: height16,
                                ),
                              ),
                              Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8.0),
                                  child: Row(children: [
                                    Image.asset(
                                      AssetImagePaths.track,
                                      height: height20,
                                      width: height20,
                                      color: appColor,
                                    ),
                                    const SizedBox(
                                      width: size8,
                                    ),
                                    const Text(
                                      StringConfig.freeFlatRateShipping,
                                      style: TextStyle(
                                        fontFamily: StringConfig.poppins,
                                        color: titleColor,
                                        fontWeight: FontWeight.w400,
                                        fontSize: height16,
                                      ),
                                    ),
                                    const Spacer(),
                                    Image.asset(
                                      AssetImagePaths.arrowdown,
                                      height: height20,
                                      color: titleColor,
                                    )
                                  ])),
                              const Padding(
                                  padding: EdgeInsets.only(left: 27),
                                  child: Text(
                                      "Estimated to be delivered on\n"
                                      "09/11/2021 - 12/11/2021.",
                                      style: TextStyle(
                                        fontFamily: StringConfig.poppins,
                                        color: greyColor,
                                        fontWeight: FontWeight.w400,
                                        fontSize: height12,
                                      ))),
                              const Divider(),
                              Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8.0),
                                  child: Row(children: [
                                    Image.asset(
                                      AssetImagePaths.tag,
                                      height: height18,
                                      width: height20,
                                      color: appColor,
                                    ),
                                    const SizedBox(
                                      width: size8,
                                    ),
                                    const Text(StringConfig.codPolicy,
                                        style: TextStyle(
                                          fontFamily: StringConfig.poppins,
                                          color: titleColor,
                                          fontWeight: FontWeight.w400,
                                          fontSize: height16,
                                        )),
                                    const Spacer(),
                                    Image.asset(
                                      AssetImagePaths.arrowForward,
                                      height: size8,
                                      color: titleColor,
                                    )
                                  ])),
                              const Divider(),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      AssetImagePaths.refresh,
                                      height: height18,
                                      width: height20,
                                      color: appColor,
                                    ),
                                    const SizedBox(
                                      width: size8,
                                    ),
                                    const Text(
                                      StringConfig.returnPolicy,
                                      style: TextStyle(
                                        fontFamily: StringConfig.poppins,
                                        color: titleColor,
                                        fontWeight: FontWeight.w400,
                                        fontSize: height16,
                                      ),
                                    ),
                                    const Spacer(),
                                    Image.asset(
                                      AssetImagePaths.arrowForward,
                                      height: size8,
                                      color: titleColor,
                                    )
                                  ],
                                ),
                              ),
                              const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: height15),
                                      child: Text(
                                        StringConfig.yOUMAYALSOLIKE,
                                        style: TextStyle(
                                          fontFamily: StringConfig.poppins,
                                          color: titleColor,
                                          fontWeight: FontWeight.w400,
                                          fontSize: height20,
                                        ),
                                      ),
                                    )
                                  ]),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: height14),
                                child: Center(
                                    child: Image.asset(
                                  AssetImagePaths.devider,
                                  height: size10,
                                )),
                              ),
                              Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: size10),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        ProductDetail(
                                          imagePng: AssetImagePaths.heartDrawer,
                                          detailImage: AssetImagePaths.mansecod,
                                        ),
                                        ProductDetail(
                                          imagePng: AssetImagePaths.heartDrawer,
                                          detailImage: AssetImagePaths.manthard,
                                        ),
                                      ]))
                            ])))
              ])
            ]))));
  }
}
