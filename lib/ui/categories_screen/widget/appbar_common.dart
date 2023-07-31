import 'package:ecommerce_ui_kit/config/routes/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../../config/asset_image_paths.dart';
import '../../../util/colors.dart';
import '../../../util/size_config.dart';

class CommonCategoryAppbar extends StatelessWidget {
  final String? leadingIcon;
  final Function()? leadingOnTap;
  const CommonCategoryAppbar({super.key, this.leadingIcon, this.leadingOnTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
            onTap: leadingOnTap!,
            child: SizedBox(
              height: height24,
              width: height30,
              child: Image.asset(
                leadingIcon!,
                height: height24,
                width: height24,
                color: arrowColor,
              ),
            )),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: size4),
          child: GestureDetector(
            child: Image.asset(
              AssetImagePaths.search,
              height: height22,
              width: height22,
            ),
            onTap: () {
              Get.toNamed(AppRoutes.searchScreen);
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: size8),
          child: GestureDetector(
            child: Image.asset(
              AssetImagePaths.heartic,
              height: height22,
              width: height22,
            ),
            onTap: () {
              Get.toNamed(AppRoutes.favouriteScreen);
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: size4),
          child: GestureDetector(
            child: Image.asset(
              AssetImagePaths.shoppingbag,
              height: height22,
              width: height22,
            ),
            onTap: () {
              Get.toNamed(AppRoutes.shoppingScreen);
            },
          ),
        ),
      ],
    );
  }
}
