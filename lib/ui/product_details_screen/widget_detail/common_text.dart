import 'package:ecommerce_ui_kit/util/string_config.dart';
import 'package:flutter/cupertino.dart';

import '../../../util/colors.dart';
import '../../../util/size_config.dart';

// ignore: must_be_immutable
class TextCommon extends StatelessWidget {
  String? text;
  String? description;
 TextCommon({super.key, this.text,this.description}) ;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text!,
          style: const TextStyle(
            fontFamily: StringConfig.poppins,
            color: titleColor,
            fontWeight: FontWeight.w500,
            fontSize: height16,
          ),
        ),

     Text( description!,
    style: const TextStyle(
    fontFamily: StringConfig.poppins,
    color: textfeildColor,
    fontWeight: FontWeight.w400,
    fontSize: height14,
    ),
    )
      ]
    );

  }
}
