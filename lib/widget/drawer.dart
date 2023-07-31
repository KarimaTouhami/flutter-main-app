import 'package:ecommerce_ui_kit/config/asset_image_paths.dart';
import 'package:ecommerce_ui_kit/util/string_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/drawer_controller.dart';
import '../config/routes/app_routes.dart';
import '../util/colors.dart';
import '../util/size_config.dart';

// ignore: must_be_immutable
class MyHeaderDrawer extends StatelessWidget {
  MyHeaderDrawer({Key? key}) : super(key: key);

  List<Map<String, dynamic>> drawerList = [
    {"title": StringConfig.myOrder, "Icon": AssetImagePaths.boxDrawer},
    {"title": StringConfig.myPayment, "Icon": AssetImagePaths.minus},
    {"title": StringConfig.myCart, "Icon": AssetImagePaths.shoppingBag},
    {"title": StringConfig.myFavourites, "Icon": AssetImagePaths.heartDrawer},
    {"title": StringConfig.myAccount, "Icon": AssetImagePaths.userSquare},
    {"title": StringConfig.appSetting, "Icon": AssetImagePaths.settingDrawer},
  ];
  final drawerController = Get.put(DrawerListController());

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: height20),
        width: width235,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: wightColor,
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(height15),
                child: CircleAvatar(
                  backgroundColor: blackColor,
                  radius: height25,
                  child: CircleAvatar(
                    radius: height25,
                    backgroundImage: AssetImage(AssetImagePaths.manimage),
                  ),
                ),
              ),
              Text(StringConfig.hello,
                  style: TextStyle(
                    fontFamily: StringConfig.poppins,
                    color: titleColor,
                    fontWeight: FontWeight.w600,
                    fontSize: height23,
                  )),
              Text(StringConfig.tony,
                  style: TextStyle(
                    fontFamily: StringConfig.poppins,
                    color: appColor,
                    fontWeight: FontWeight.w600,
                    fontSize: height23,
                  ))
            ],
          ),
          ...List.generate(
              drawerList.length,
              (index) => GestureDetector(
                  onTap: () {
                    drawerController.selectedDrawer.value = index;
                    drawerController.selectedDrawer.value == 0
                        ? Get.toNamed(AppRoutes.myOrderScreen)
                        : drawerController.selectedDrawer.value == 1
                            ? Get.toNamed(AppRoutes.myPaymentsAScreen)
                            : drawerController.selectedDrawer.value == 2
                                ? Get.toNamed(AppRoutes.shoppingScreen)
                                : drawerController.selectedDrawer.value == 3
                                    ? Get.toNamed(AppRoutes.favouriteScreen)
                                    : drawerController.selectedDrawer.value == 4
                                        ? Get.toNamed(AppRoutes.profileScreen)
                                        : Get.toNamed(AppRoutes.settingScreen);
                  },
                  child: Obx(() => Padding(
                      padding: const EdgeInsets.only(right: size8),
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.horizontal(
                                  right: Radius.circular(height55)),
                              color:
                                  drawerController.selectedDrawer.value == index
                                      ? appColor
                                      : wightColor),
                          child: Row(children: [
                            Padding(
                                padding: const EdgeInsets.all(height20),
                                child: Image.asset(
                                    drawerList[index]["Icon"].toString(),
                                    height: height20,
                                    color:
                                        drawerController.selectedDrawer.value ==
                                                index
                                            ? wightColor
                                            : titleColor)),
                            Text(drawerList[index]["title"].toString(),
                                style: TextStyle(
                                  fontFamily: StringConfig.poppins,
                                  fontSize: height16,
                                  fontWeight: FontWeight.w400,
                                  color:
                                      drawerController.selectedDrawer.value ==
                                              index
                                          ? wightColor
                                          : titleColor,
                                )),
                            const SizedBox(height: height25),
                          ])))))),
          const Spacer(),
          Padding(
              padding: const EdgeInsets.only(bottom: height15),
              child: Container(
                  height: height50,
                  width: Get.width / 2.2,
                  decoration: BoxDecoration(
                      color: appColor,
                      borderRadius: BorderRadius.circular(height53)),
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: height30),
                      child: GestureDetector(
                          child: Row(children: [
                            Image.asset(
                              AssetImagePaths.logout,
                              color: wightColor,
                              height: height20,
                            ),
                            const SizedBox(
                              width: height15,
                            ),
                            const Text(
                              StringConfig.logout,
                              style: TextStyle(
                                fontFamily: StringConfig.poppins,
                                fontSize: height16,
                                fontWeight: FontWeight.w400,
                                color: wightColor,
                              ),
                            ),
                          ]),
                          onTap: () {
                            logoutBottomSheet(context);
                          }))))
        ]));
  }

  logoutBottomSheet(BuildContext context) {
    return showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        elevation: size10,
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
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        StringConfig.logout,
                        style: TextStyle(
                            fontFamily: StringConfig.poppins,
                            color: logoutColor,
                            fontWeight: FontWeight.w500,
                            fontSize: height18),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: size10,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: height20,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: size10),
                    child: Text(
                      StringConfig.areYouSureYouWantToLogOut,
                      style: TextStyle(
                          fontFamily: StringConfig.poppins,
                          color: greyColor,
                          fontWeight: FontWeight.w400,
                          fontSize: height16),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(height15),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              child: Container(
                                width: Get.width / 2.3,
                                height: height45,
                                decoration: BoxDecoration(
                                    color: rowColor,
                                    borderRadius:
                                        BorderRadius.circular(height53)),
                                child: const Center(
                                    child: Text(
                                  StringConfig.cancels,
                                  style: TextStyle(
                                    color: titleColor,
                                    fontFamily: StringConfig.poppins,
                                    fontWeight: FontWeight.w500,
                                    fontSize: height16,
                                  ),
                                )),
                              ),
                              onTap: () {
                                Get.back();
                              },
                            ),
                            GestureDetector(
                              child: Container(
                                  height: height45,
                                  width: Get.width / 2.3,
                                  decoration: BoxDecoration(
                                      color: appColor,
                                      borderRadius:
                                          BorderRadius.circular(height53)),
                                  child: const Center(
                                      child: Text(StringConfig.remove,
                                          style: TextStyle(
                                            color: wightColor,
                                            fontFamily: StringConfig.poppins,
                                            fontWeight: FontWeight.w500,
                                            fontSize: height16,
                                          )))),
                              onTap: () {
                                Get.toNamed(AppRoutes.loginScreen);
                              },
                            )
                          ]))
                ])));
          });
        });
  }
}
