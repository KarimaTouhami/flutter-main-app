import 'package:ecommerce_ui_kit/config/asset_image_paths.dart';
import 'package:ecommerce_ui_kit/util/colors.dart';
import 'package:flutter/material.dart';
import '../../../util/size_config.dart';
import '../../../util/string_config.dart';

// ignore: must_be_immutable
class ExpansionTileCommon  extends StatelessWidget {
  String? text;
  ExpansionTileCommon ({super.key, this.text}) ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: size8),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(text!,
                  style: const TextStyle(
                    fontFamily: StringConfig.poppins,
                    color: titleColor,
                    fontWeight: FontWeight.w500,
                    fontSize: height16,
                  )
              ),
            Image.asset(AssetImagePaths.arrowForward,height: height15,width: height15,color: greyColor)
            ],
          ),
          const SizedBox(height: size4),
          const Divider(color: containerBorderColor),
        ]
      )
    );
  }
}
