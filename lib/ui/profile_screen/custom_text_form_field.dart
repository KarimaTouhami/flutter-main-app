import 'package:flutter/material.dart';
import '../../util/colors.dart';
import '../../util/size_config.dart';
import '../../util/string_config.dart';

class CommonDataField extends StatelessWidget {
  final String? title;
  final String? text;

  const CommonDataField({
    Key? key,
    this.title,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height60,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: containerBorderColor,
          ),
        ),
        child: Stack(clipBehavior: Clip.none, children: [
          Padding(
            padding: const EdgeInsets.all(height20),
            child: Text(
              text!,
              style: const TextStyle(
                  fontFamily: StringConfig.poppins,
                  color: greyColor,
                  fontWeight: FontWeight.w500,
                  fontSize: height13),
            ),
          ),
          Positioned(
              top: -height10,
              left: height10,
              child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: height5),
                  color: Colors.white,
                  child: Text(title!,
                      style: const TextStyle(
                        fontFamily: StringConfig.poppins,
                        color: greyColor,
                        fontWeight: FontWeight.w400,
                        fontSize: height13,
                      ))))
        ]));
  }
}
