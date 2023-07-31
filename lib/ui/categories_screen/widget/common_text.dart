import 'package:ecommerce_ui_kit/config/routes/app_routes.dart';
import 'package:ecommerce_ui_kit/util/string_config.dart';
import 'package:flutter/material.dart';
import '../../../config/asset_image_paths.dart';
import '../../../util/colors.dart';
import '../../../util/size_config.dart';

// ignore: must_be_immutable
class TextCommon extends StatelessWidget {
  String? productName;

  TextCommon({super.key, this.productName});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: size10),
        child: Row(children: [
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.productListScreen);
            },
            child: Text(
              productName!,
              style: const TextStyle(
                fontFamily: StringConfig.poppins,
                color: titleColor,
                fontWeight: FontWeight.w400,
                fontSize: height16,
              ),
            ),
          ),
          const Spacer(),
          Image.asset(
            AssetImagePaths.forwardarrow,
            height: height24,
            width: height24,
          ),
        ]));
  }
}
