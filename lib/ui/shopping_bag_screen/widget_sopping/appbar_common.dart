import 'package:ecommerce_ui_kit/util/string_config.dart';
import 'package:flutter/cupertino.dart';
import '../../../config/asset_image_paths.dart';
import '../../../util/colors.dart';
import '../../../util/size_config.dart';

// ignore: must_be_immutable
class SoppingScreenAppbar extends StatelessWidget {
  String? title;
   SoppingScreenAppbar({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
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
    )
        ),
        Container()
      ],
    );
  }
}
