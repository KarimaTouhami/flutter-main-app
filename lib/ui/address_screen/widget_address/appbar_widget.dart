import 'package:ecommerce_ui_kit/config/asset_image_paths.dart';
import 'package:ecommerce_ui_kit/util/colors.dart';
import 'package:ecommerce_ui_kit/util/size_config.dart';
import 'package:flutter/material.dart';
import '../../../util/string_config.dart';

class AppBarCommon extends StatelessWidget {
  final String? title;
  final String? trailingIcon;

  const AppBarCommon({super.key, this.title, this.trailingIcon});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      GestureDetector(
        child: SizedBox(
          height: height24,
          width: height24,
          child: Image.asset(
            AssetImagePaths.arrow,
            height: height24,
            width: height24,
            color: arrowColor,
          ),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      Text(title!,
          style: const TextStyle(
            fontFamily: StringConfig.poppins,
            color: titleColor,
            fontWeight: FontWeight.w400,
            fontSize: height20,
          )),
      // ignore: unnecessary_null_comparison
      trailingIcon! == null
          ? const SizedBox(width: width10)
          : Padding(
              padding: const EdgeInsets.symmetric(horizontal: height4),
              child: Image.asset(
                trailingIcon!,
                height: height22,
                width: width22,
              ))
    ]);
  }
}
