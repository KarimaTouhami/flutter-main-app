import 'package:ecommerce_ui_kit/util/colors.dart';
import 'package:ecommerce_ui_kit/util/string_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../config/routes/app_routes.dart';
import '../../../util/size_config.dart';

class ContainerBrandWidget extends StatelessWidget {
  final String? image;
  final String? brandName;
  final String? discount;
  const ContainerBrandWidget(
      {super.key, this.image, this.brandName, this.discount});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(size10),
        height: 220,
        width: height165,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(size10),
            border: Border.all(color: Colors.grey.withOpacity(0.1))),
        child: FittedBox(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                    child: Image.asset(image!,
                      height: 160,
                      fit: BoxFit.fitWidth,
                    ),
                    onTap: () {
                      Get.toNamed(AppRoutes.productDetailScreen);
                    }),
                const SizedBox(
                  height: 10,
                ),
                Text(brandName!,
                  style: const TextStyle(
                    fontFamily: StringConfig.poppins,
                    color: brandColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 24,
                  ),
                ),
                Text(discount!,
                  style: const TextStyle(
                    fontFamily: StringConfig.poppins,
                    color: discountColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                )
              ])
        ));
  }
}
