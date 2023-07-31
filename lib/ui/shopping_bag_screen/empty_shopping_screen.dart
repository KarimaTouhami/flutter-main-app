import 'package:ecommerce_ui_kit/config/asset_image_paths.dart';
import 'package:ecommerce_ui_kit/util/colors.dart';
import 'package:ecommerce_ui_kit/util/string_config.dart';
import 'package:ecommerce_ui_kit/widget/appbar_common.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../config/routes/app_routes.dart';
import '../../util/size_config.dart';
import '../home_screen/widget_home/product_detail.dart';

class EmptyShoppingScreen extends StatelessWidget {
  const EmptyShoppingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: PreferredSize(
                preferredSize: const Size.fromHeight(height100),
                child: AppBarWidget(
                  leadingIcon: AssetImagePaths.arrow,
                  leadingOnTap: () {
                    Get.back();
                  },
                  text: StringConfig.shoppingBAG,
                  trailingIcon: AssetImagePaths.heartic,
                  trailingOnTap: () {
                    Get.toNamed(AppRoutes.favouriteScreen);
                  },
                )),
            body: SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.all(height15),
                    child: Column(children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: height20),
                        child: Text(
                          StringConfig.yourShoppingBagIsEmpty,
                          style: TextStyle(
                              fontFamily: StringConfig.poppins,
                              fontSize: height14,
                              fontWeight: FontWeight.w600,
                              color: titleColor),
                        ),
                      ),
                      Image.asset(
                        AssetImagePaths.emptybag,
                        height: height200,
                        width: height200,
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
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: size10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ProductDetail(
                              imagePng: AssetImagePaths.heartDrawer,
                              detailImage: AssetImagePaths.proDetail,
                            ),
                            ProductDetail(
                              imagePng: AssetImagePaths.heartDrawer,
                              detailImage: AssetImagePaths.secondgril,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(vertical: size10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    ])))));
  }
}
