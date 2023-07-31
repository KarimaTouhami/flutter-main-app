import 'package:ecommerce_ui_kit/util/string_config.dart';
import 'package:flutter/material.dart';
import '../../../util/colors.dart';
import '../../../util/size_config.dart';

// ignore: must_be_immutable
class ReviewTextCommon extends StatelessWidget {
  String? text;

  ReviewTextCommon({super.key, this.text});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: height20,
            width: height35,
            decoration: BoxDecoration(
              color: rowColor,
              borderRadius: BorderRadius.circular(size2),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(StringConfig.string_4_2,
                    style: TextStyle(
                      fontFamily: StringConfig.poppins,
                      color: titleColor,
                      fontWeight: FontWeight.w400,
                      fontSize: size11,
                    )),
                Icon(
                  Icons.star,
                  size: size12,
                  color: appColor,
                ),
              ],
            ),
          ),
          const SizedBox(
            width: size5,
          ),
          Text(
            text!,
            style: const TextStyle(
              fontFamily: StringConfig.poppins,
              color: textfeildColor,
              fontWeight: FontWeight.w400,
              fontSize: size12,
            ),
          )
        ],
      ),
      const Padding(
          padding: EdgeInsets.only(left: height40),
          child: Row(children: [
            Text(StringConfig.shipaHegde,
                style: TextStyle(
                  fontFamily: StringConfig.poppins,
                  color: greyColor,
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.w400,
                  fontSize: size13,
                )),
            SizedBox(
              width: height20,
            ),
            Text(StringConfig.string_21January,
                style: TextStyle(
                  fontFamily: StringConfig.poppins,
                  color: greyColor,
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.w400,
                  fontSize: size13,
                ))
          ]))
    ]);
  }
}
