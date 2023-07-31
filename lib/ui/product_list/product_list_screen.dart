import 'package:ecommerce_ui_kit/controller/product_list_screen_controller.dart';
import 'package:ecommerce_ui_kit/config/asset_image_paths.dart';
import 'package:ecommerce_ui_kit/ui/product_list/widget_product/check_box_widget.dart';
import 'package:ecommerce_ui_kit/util/colors.dart';
import 'package:ecommerce_ui_kit/util/string_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/filter_controller.dart';
import '../../util/size_config.dart';
import '../categories_screen/widget/appbar_common.dart';
import '../home_screen/widget_home/product_detail.dart';
import '../loginscreen/widget_login/common_button.dart';
import 'widget_product/filter_expantile_widget.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  final FilterController filterController = Get.put(FilterController());
  bool selected = false;

  final productListController = Get.put(ProductListController());

  final List<BrandModel> brandList = [
    BrandModel(
      "Top",
      false,
    ),
    BrandModel(
      "Color plus",
      false,
    ),
    BrandModel(
      "Fashionista",
      false,
    ),
    BrandModel(
      "Belle Chic",
      false,
    ),
    BrandModel(
      "Biba",
      false,
    ),
    BrandModel(
      "Monte Carlo",
      false,
    ),
  ];

  final List<ItemModel> chipsList = [
    ItemModel(
      "All",
      false,
    ),
    ItemModel(
      "Western Wear",
      false,
    ),
    ItemModel(
      "Sportwear",
      false,
    ),
    ItemModel(
      "Ethnic Wear",
      false,
    ),
    ItemModel(
      "Sleep & lounge Wear",
      false,
    ),
    ItemModel(
      "Swim & Beachwear",
      false,
    ),
    ItemModel(
      "Lingerie & Wear",
      false,
    ),
  ];

  List<Widget> filterBrandList() {
    List<Widget> chips = [];
    for (int i = 0; i < brandList.length; i++) {
      Widget item = StatefulBuilder(
        builder:
            (BuildContext context, void Function(void Function()) setState) {
          return Padding(
            padding: const EdgeInsets.only(left: height10, right: height5),
            child: FilterChip(
              showCheckmark: false,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              selectedColor: appColor,
              label: Text(brandList[i].brandName,
                  style: brandList[i].isSelect
                      ? const TextStyle(color: wightColor)
                      : const TextStyle(color: titleColor)),
              labelStyle: brandList[i].isSelect
                  ? const TextStyle(
                      color: appColor,
                      fontFamily: "Poppins",
                      fontSize: fontSize14,
                      fontWeight: FontWeight.w400)
                  : const TextStyle(
                      color: wightColor,
                      fontFamily: "Poppins",
                      fontSize: fontSize14,
                      fontWeight: FontWeight.w400),
              backgroundColor: wightColor,
              selected: brandList[i].isSelect,
              onSelected: (bool value) {
                setState(() {
                  brandList[i].isSelect = value;
                });
              },
            ),
          );
        },
      );
      chips.add(item);
    }
    return chips;
  }

  List<Widget> filterCategoryList() {
    List<Widget> chips = [];
    for (int i = 0; i < chipsList.length; i++) {
      Widget item = StatefulBuilder(
        builder:
            (BuildContext context, void Function(void Function()) setState) {
          return Padding(
              padding: const EdgeInsets.only(left: height10, right: height5),
              child: FilterChip(
                  showCheckmark: false,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  selectedColor: appColor,
                  label: Text(chipsList[i].label,
                      style: chipsList[i].isSelected
                          ? const TextStyle(color: wightColor)
                          : const TextStyle(color: titleColor)),
                  labelStyle: chipsList[i].isSelected
                      ? const TextStyle(
                          color: appColor,
                          fontFamily: "Poppins",
                          fontSize: fontSize14,
                          fontWeight: FontWeight.w400)
                      : const TextStyle(
                          color: wightColor,
                          fontFamily: "Poppins",
                          fontSize: fontSize14,
                          fontWeight: FontWeight.w400),
                  backgroundColor: wightColor,
                  selected: chipsList[i].isSelected,
                  onSelected: (bool value) {
                    setState(() {
                      chipsList[i].isSelected = value;
                    });
                  }));
        },
      );
      chips.add(item);
    }
    return chips;
  }

  final List<Color> colors = [
    const Color(0xFF0F140D),
    const Color(0xFFEAD25E),
    const Color(0xFFDD8560),
    const Color(0xFFED3C3C),
    const Color(0xFFFFA51C),
    const Color(0xFF336CFE),
  ];

  String selectedOption = 'Categories';
  var size = [
    'anarkali',
    'shoot',
    'patiyal',
    'choli',
    'plazo',
    'lahenga choli'
  ];
  var colorsList = ['cotton', 'mol', 'swiss cotton'];

  final GlobalKey cardA = GlobalKey();
  final GlobalKey cardB = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: PreferredSize(
                preferredSize: const Size.fromHeight(45),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 10, top: 15.0, bottom: 8, right: 15),
                  child: CommonCategoryAppbar(
                    leadingIcon: AssetImagePaths.arrow,
                    leadingOnTap: () {
                      Get.back();
                    },
                  ),
                )),
            body: SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: size8),
                    child: Column(children: [
                      const SizedBox(
                        height: height15,
                      ),
                      Container(
                          height: height44,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(height42),
                              color: wightColor),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  child: Container(
                                      width: Get.width / 2.3,
                                      height: height35,
                                      decoration: BoxDecoration(
                                          color: appColor,
                                          borderRadius:
                                              BorderRadius.circular(height42)),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              AssetImagePaths.sortIc,
                                              height: height15,
                                              width: height15,
                                              color: wightColor,
                                            ),
                                            const SizedBox(
                                              width: size7,
                                            ),
                                            const Text(
                                              StringConfig.sort,
                                              style: TextStyle(
                                                  color: wightColor,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: height14),
                                            )
                                          ])),
                                  onTap: () {
                                    sortBottomSheet(context);
                                  },
                                ),
                                const SizedBox(
                                  width: size10,
                                ),
                                GestureDetector(
                                  child: Container(
                                    width: Get.width / 2.3,
                                    height: height35,
                                    decoration: BoxDecoration(
                                        color: rowColor,
                                        borderRadius:
                                            BorderRadius.circular(height42)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          AssetImagePaths.filterline,
                                          height: height15,
                                          width: height15,
                                        ),
                                        const SizedBox(
                                          width: size7,
                                        ),
                                        const Text(
                                          StringConfig.filter,
                                          style: TextStyle(
                                              color: appColor,
                                              fontWeight: FontWeight.w500,
                                              fontSize: height14),
                                        ),
                                      ],
                                    ),
                                  ),
                                  onTap: () {
                                    filterBottomSheet(context);
                                  },
                                )
                              ])),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 5, top: 15, right: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ProductDetail(
                              imagePng: AssetImagePaths.heartDrawer,
                              detailImage: AssetImagePaths.proDetail,
                            ),
                            const SizedBox(width: height8),
                            ProductDetail(
                              imagePng: AssetImagePaths.heartDrawer,
                              detailImage: AssetImagePaths.secondgril,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: height5, top: 15, right: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ProductDetail(
                                  imagePng: AssetImagePaths.heartDrawer,
                                  detailImage: AssetImagePaths.mansecod,
                                ),
                                const SizedBox(width: 8),
                                ProductDetail(
                                  imagePng: AssetImagePaths.heartDrawer,
                                  detailImage: AssetImagePaths.manthard,
                                ),
                              ])),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 5, top: 15, right: 5),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ProductDetail(
                                imagePng: AssetImagePaths.heartDrawer,
                                detailImage: AssetImagePaths.proDetail,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              ProductDetail(
                                imagePng: AssetImagePaths.heartDrawer,
                                detailImage: AssetImagePaths.secondgril,
                              )
                            ]),
                      ),
                      Padding(
                          padding:
                              const EdgeInsets.only(left: 5, top: 15, right: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ProductDetail(
                                  imagePng: AssetImagePaths.heartDrawer,
                                  detailImage: AssetImagePaths.mansecod,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                ProductDetail(
                                  imagePng: AssetImagePaths.heartDrawer,
                                  detailImage: AssetImagePaths.manthard,
                                ),
                              ]))
                    ])))));
  }

  sortBottomSheet(BuildContext context) {
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
                    child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(height15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(),
                        const Text(
                          StringConfig.sortBy,
                          style: TextStyle(
                              color: titleColor,
                              fontWeight: FontWeight.w600,
                              fontSize: height20),
                        ),
                        InkWell(
                          child: Image.asset(
                            AssetImagePaths.crossic,
                            height: 14,
                            color: titleColor,
                          ),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: height15),
                      child: Column(children: <Widget>[
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                StringConfig.recommended,
                                style: TextStyle(
                                    color: titleColor,
                                    fontWeight: FontWeight.w400,
                                    fontSize: height18),
                              ),
                              Radio(
                                  value: 'Recommended',
                                  groupValue: selectedOption,
                                  activeColor: greyColor,
                                  focusColor: greyColor,
                                  hoverColor: greyColor,
                                  fillColor: MaterialStateColor.resolveWith(
                                      (states) => appColor),
                                  onChanged: (value) {
                                    setState(() {
                                      selectedOption = value!;
                                    });
                                  })
                            ]),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                StringConfig.newest,
                                style: TextStyle(
                                    color: titleColor,
                                    fontWeight: FontWeight.w400,
                                    fontSize: height18),
                              ),
                              Radio(
                                  value: 'Newest',
                                  groupValue: selectedOption,
                                  activeColor: greyColor,
                                  focusColor: greyColor,
                                  hoverColor: greyColor,
                                  fillColor: MaterialStateColor.resolveWith(
                                      (states) => appColor),
                                  onChanged: (value) {
                                    setState(() {
                                      selectedOption = value!;
                                    });
                                  })
                            ]),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                StringConfig.lowestPrice,
                                style: TextStyle(
                                    color: titleColor,
                                    fontWeight: FontWeight.w400,
                                    fontSize: height18),
                              ),
                              Radio(
                                  value: 'Lowest Price',
                                  groupValue: selectedOption,
                                  activeColor: greyColor,
                                  focusColor: greyColor,
                                  hoverColor: greyColor,
                                  fillColor: MaterialStateColor.resolveWith(
                                      (states) => appColor),
                                  onChanged: (value) {
                                    setState(() {
                                      selectedOption = value!;
                                    });
                                  })
                            ]),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                StringConfig.highestPrice,
                                style: TextStyle(
                                    color: titleColor,
                                    fontWeight: FontWeight.w400,
                                    fontSize: height18),
                              ),
                              Radio(
                                  value: 'Highest Price',
                                  groupValue: selectedOption,
                                  activeColor: greyColor,
                                  focusColor: greyColor,
                                  hoverColor: greyColor,
                                  fillColor: MaterialStateColor.resolveWith(
                                      (states) => appColor),
                                  onChanged: (value) {
                                    setState(() {
                                      selectedOption = value!;
                                    });
                                  })
                            ])
                      ])),
                  const SizedBox(
                    height: height20,
                  ),
                  Padding(
                      padding: const EdgeInsets.all(height15),
                      child: ButtonCommon(
                        text: StringConfig.applyS,
                        buttonColor: appColor,
                        textColor: wightColor,
                        onTap: () {
                          Get.back();
                        },
                      ))
                ])));
          });
        });
  }

  filterBottomSheet(BuildContext context) {
    return showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        // backgroundColor: Colors.white,
        elevation: 10,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(height25),
            topRight: Radius.circular(height25),
          ),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        builder: (BuildContext context) {
          return StatefulBuilder(
            builder: (BuildContext context,
                void Function(void Function()) filterSetState) {
              return Padding(
                  padding: const EdgeInsets.symmetric(vertical: height20),
                  child: SingleChildScrollView(
                      child: Padding(
                          padding: const EdgeInsets.all(height15),
                          child: Column(children: [
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(),
                                  const Text(
                                    StringConfig.fIlter,
                                    style: TextStyle(
                                        color: titleColor,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 20),
                                  ),
                                  InkWell(
                                      child: Image.asset(
                                          AssetImagePaths.crossic,
                                          scale: 3,
                                          color: titleColor),
                                      onTap: () {
                                        Navigator.pop(context);
                                      })
                                ]),
                            const SizedBox(height: 10),
                            ExpansionTileCommon(text: StringConfig.categories),
                            Column(children: [
                              Wrap(
                                spacing: 8,
                                direction: Axis.horizontal,
                                children: filterCategoryList(),
                              )
                            ]),
                            ExpansionTileCommon(text: StringConfig.brand),
                            Column(children: [
                              Wrap(
                                spacing: 10,
                                direction: Axis.horizontal,
                                children: filterBrandList(),
                              )
                            ]),
                            ExpansionTileCommon(text: StringConfig.Size),
                            const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children:  [
                                      Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 8.0),
                                        child: CheckBoxWidget(
                                          text: "32",
                                          size: "(xxs)",
                                        ),
                                      ),
                                      CheckBoxWidget(
                                        text: "32",
                                        size: "(xxs)",
                                      ),
                                    ],
                                  ),
                                  Column(children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 8.0),
                                      child: CheckBoxWidget(
                                        text: "32",
                                        size: "(xxs)",
                                      ),
                                    ),
                                    CheckBoxWidget(
                                      text: "32",
                                      size: "(xxs)",
                                    ),
                                  ]),
                                  Column(children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 8.0),
                                      child: CheckBoxWidget(
                                        text: "32",
                                        size: "(xxs)",
                                      ),
                                    ),
                                    CheckBoxWidget(
                                      text: "32",
                                      size: "(xxs)",
                                    )
                                  ])
                                ]),
                            ExpansionTileCommon(text: "Color"),
                            SizedBox(
                                height: 40,
                                width: Get.width,
                                child: Obx(() => Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: List.generate(
                                        6,
                                        (index) => GestureDetector(
                                            onTap: () {
                                              productListController
                                                  .currentIndex.value = index;
                                            },
                                            child: Container(
                                                height: 30,
                                                width: 30,
                                                padding: productListController
                                                            .currentIndex
                                                            .value ==
                                                        index
                                                    ? const EdgeInsets.all(2.5)
                                                    : EdgeInsets.zero,
                                                margin: const EdgeInsets.all(5),
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  border: Border.all(
                                                      color: productListController
                                                                  .currentIndex
                                                                  .value ==
                                                              index
                                                          ? greyColor
                                                          : wightColor),
                                                ),
                                                child: CircleAvatar(
                                                  backgroundColor:
                                                      colors[index],
                                                ))))))),
                            ExpansionTileCommon(text: StringConfig.price),
                            SliderTheme(
                                data: const SliderThemeData(
                                  trackHeight: size4,
                                ),
                                child: RangeSlider(
                                    activeColor: appColor,
                                    inactiveColor: containerBorderColor,
                                    values: productListController.rangeValues,
                                    divisions: 100,
                                    max: 100,
                                    labels: RangeLabels(
                                      productListController.rangeValues.start
                                          .round()
                                          .toString(),
                                      productListController.rangeValues.end
                                          .round()
                                          .toString(),
                                    ),
                                    onChanged: (values) {
                                      filterSetState(() {
                                        productListController.rangeValues =
                                            values;
                                      });
                                    })),
                            const SizedBox(
                              height: height25,
                            ),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: Get.width / 2.3,
                                    height: height45,
                                    decoration: BoxDecoration(
                                        color: rowColor,
                                        borderRadius:
                                            BorderRadius.circular(height53)),
                                    child: const Center(
                                        child: Text(StringConfig.continues,
                                            style: TextStyle(
                                              color: titleColor,
                                              fontFamily: StringConfig.poppins,
                                              fontWeight: FontWeight.w500,
                                              fontSize: height16,
                                            ))),
                                  ),
                                  GestureDetector(
                                      child: Container(
                                        height: height45,
                                        width: Get.width / 2.3,
                                        decoration: BoxDecoration(
                                            color: appColor,
                                            borderRadius: BorderRadius.circular(
                                                height53)),
                                        child: const Center(
                                            child: Text(StringConfig.applyS,
                                                style: TextStyle(
                                                  color: wightColor,
                                                  fontFamily:
                                                      StringConfig.poppins,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: height16,
                                                ))),
                                      ),
                                      onTap: () {
                                        Get.back();
                                      })
                                ])
                          ]))));
            },
          );
        });
  }
}

class ItemModel {
  String label;
  bool isSelected = false;

  ItemModel(
    this.label,
    this.isSelected,
  );
}

class BrandModel {
  String brandName;
  bool isSelect;

  BrandModel(this.brandName, this.isSelect);
}
