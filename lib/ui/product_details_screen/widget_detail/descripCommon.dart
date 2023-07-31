
// ignore_for_file: file_names
import 'package:ecommerce_ui_kit/util/string_config.dart';
import 'package:flutter/cupertino.dart';
import '../../../util/size_config.dart';
import 'package:ecommerce_ui_kit/util/colors.dart';

// ignore: must_be_immutable
class DiscretionCommon extends StatelessWidget {
  String? imagePng;
  String? text;
  DiscretionCommon({super.key, this.imagePng,this.text
  }) ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(size4),
      child: Row(
        children: [
          Image.asset(imagePng!,height: height20,width: height20,color: appColor,),
          const SizedBox(width: size10),
          Text(text!,
          style: const TextStyle(
          fontFamily: StringConfig.poppins,
      color: titleColor,
      fontWeight: FontWeight.w400,
      fontSize: height15)),
        ],
      ),
    );
  }
}
