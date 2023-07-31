import 'package:ecommerce_ui_kit/config/asset_image_paths.dart';
import 'package:ecommerce_ui_kit/ui/home_screen/widget_home/brand_detail_widget.dart';
import 'package:ecommerce_ui_kit/util/string_config.dart';
import 'package:ecommerce_ui_kit/ui/home_screen/widget_home/image_circal.dart';
import 'package:ecommerce_ui_kit/util/font_family.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/homecontroller.dart';
import '../../config/routes/app_routes.dart';
import '../../model/product_model.dart';
import '../../util/colors.dart';
import '../../util/size_config.dart';
import '../../widget/drawer.dart';
import '../categories_screen/widget/appbar_common.dart';

class HomeScreen extends StatelessWidget {
    HomeScreen({super.key});

  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  final homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      key: _globalKey,
      drawer: MyHeaderDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(height15),
              child: CommonCategoryAppbar(
                leadingIcon: AssetImagePaths.menuic,
                leadingOnTap: () {
                  _globalKey.currentState!.openDrawer();
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: height15),
              child: Stack(
                  children: [
                Image.asset(
                  AssetImagePaths.homeinage,
                ),
                 Column(
                   children: [
                     SizedBox(height: Get.height/10),
                     const Center(
                       child: Text(StringConfig.disISCOVERTOURNEXT,
                           textAlign: TextAlign.center,
                           style: TextStyle(
                             fontFamily: notoSerifTC,
                             color: wightColor,
                             height: 1.6,
                             fontWeight: FontWeight.w900,
                             fontSize: height27,
                           )),
                     ),
                     const Text(StringConfig.nEWCOLLECTION,
                         textAlign: TextAlign.center,
                         style: TextStyle(
                           fontFamily: StringConfig.poppins,
                           color: wightColor,
                           fontWeight: FontWeight.w500,
                           fontSize: height15,
                         )),
                     SizedBox(
                       height: Get.height/30),
                       Container(
                           height: height30,
                           width: height90,
                           decoration: BoxDecoration(
                               color: wightColor,
                               borderRadius: BorderRadius.circular(size4)),
                           child: const Center(
                             child: Text(StringConfig.string_10OFF,
                                 textAlign: TextAlign.center,
                                 style: TextStyle(
                                   fontFamily: StringConfig.poppins,
                                   color: appColor,
                                   fontWeight: FontWeight.w500,
                                   fontSize: height15,
                                 )),
                           )
                     )
                   ],
                 ),
              ]),
            ),
            const SizedBox(
              height: height15,
            ),
            Container(
              height: height86,
              decoration: const BoxDecoration(color: rowColor),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                  4,
                  (index) => Obx(() => ImageCircle(
                    image: homeController.categoryList[index]["Image"],
                    text: homeController.categoryList[index]["Title"],
                  ), )
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: height14),
              child: Text(
                StringConfig.yOUMAYALSOLIKE,
                style: TextStyle(
                  fontFamily: StringConfig.poppins,
                  color: titleColor,
                  fontWeight: FontWeight.w400,
                  fontSize: height20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: size5),
              child: Center(
                  child: Image.asset(
                AssetImagePaths.devider,
                height: size10,
              )
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: height10),
              child: SizedBox(
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // Number of columns
                      mainAxisSpacing: 10.0, // Spacing between rows
                      crossAxisSpacing: 10.0, // Spacing between columns
                      childAspectRatio: 1 / 1.5),
                      itemCount: 4, // Number of items to display
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      elevation: 0.5,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: GestureDetector(
                                  child: Stack(
                                      children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 12, bottom: 12),
                                      child: Image.asset(
                                        allProductList[index].imagePng!,
                                        height: 165,
                                        width: 170,
                                      ),
                                    ),
                                    Positioned(
                                        top: 20,
                                        right: 20,
                                        child: Image.asset(
                                          AssetImagePaths.heartDrawer,
                                          height: 20,
                                          width: 20,
                                        ))
                                  ]),
                                  onTap: () {
                                    Get.toNamed(AppRoutes.productDetailScreen);
                                  }),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 12),
                              child: Row(
                                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                  children:[
                                    Text(allProductList[index].name!,
                                        style: const TextStyle(
                                          fontFamily: StringConfig.poppins,
                                          color: titleColor,
                                          fontWeight: FontWeight.w500,
                                          fontSize: height14,
                                        )),
                                    Container(
                                        height: height18,
                                        width: height33,
                                        decoration: const BoxDecoration(
                                          color: rowColor,
                                        ),
                                        child: const Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text(StringConfig.string_4_2,
                                                  style: TextStyle(
                                                    fontFamily: StringConfig.poppins,
                                                    color: titleColor,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: size9)),
                                              Icon(Icons.star,
                                                size: size12,
                                                color: appColor,
                                              )
                                            ]))
                                  ]),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: Row(
                                children: [
                                  Text(allProductList[index].price!, style: const TextStyle(
                                          fontFamily: StringConfig.poppins,
                                          fontSize: size12,
                                          height: size1_5,
                                          fontWeight: FontWeight.w500,
                                          color: titleColor)),
                                  const SizedBox(width: height3),
                                  Text(allProductList[index].discount!,
                                      style: const TextStyle(
                                          fontFamily: StringConfig.poppins,
                                          fontSize: size9,
                                          fontWeight: FontWeight.w400,
                                          color: redColor))
                                ],
                              )
                              ),
                          ]),
                    );
                  },
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: height14),
              child: Text(
                StringConfig.tOPBRAND,
                style: TextStyle(
                  fontFamily: StringConfig.poppins,
                  color: titleColor,
                  fontWeight: FontWeight.w400,
                  fontSize: height20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: size5),
              child: Center(
                  child: Image.asset(
                AssetImagePaths.devider,
                height: size10,
              )),
            ),
            SizedBox(
              height: 700,
              child: GridView.extent(
                primary: false,
                padding: const EdgeInsets.all(height5),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                maxCrossAxisExtent: 250.0,
                childAspectRatio: 1 / 1.3,
                physics: const NeverScrollableScrollPhysics(),
                children: List.generate(
                    6,
                    (index) => Obx(() => ContainerBrandWidget(
                      image: homeController.topBrand[index]["image"],
                      brandName: homeController.topBrand[index]["brandName"],
                      discount: homeController.topBrand[index]["discount"],
                    ))),
              ),
            ),
            Image.asset(
              AssetImagePaths.devider,
              height: size10,
            ),
            const SizedBox(height: height10)
          ],
        ),
      ),
    ));
  }
}
