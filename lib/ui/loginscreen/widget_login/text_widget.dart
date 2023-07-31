import 'package:ecommerce_ui_kit/util/colors.dart';
import 'package:flutter/cupertino.dart';

import '../../../util/size_config.dart';
import '../../../util/string_config.dart';

// ignore: must_be_immutable
class TextCommonWidget extends StatelessWidget {
  String? title;
  String? descriptions;

  TextCommonWidget({super.key, this.title, this.descriptions});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: height30,
          ),
          Text(
            title!,
            textAlign: TextAlign.start,
            style: const TextStyle(
                fontSize: height26,
                fontFamily: StringConfig.poppins,
                height: 0.10,
                fontWeight: FontWeight.w600,
                color: titleColor),
          ),
          const SizedBox(height: height15),
          Text(
            descriptions!,
            textAlign: TextAlign.start,
            maxLines: 2,
            style: const TextStyle(
                fontSize: height14,
                fontFamily: StringConfig.poppins,
                fontWeight: FontWeight.w400,
                color: textfeildColor),
          )
        ]);
  }
}
