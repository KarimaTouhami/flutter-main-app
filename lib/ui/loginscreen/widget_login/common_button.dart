import 'package:ecommerce_ui_kit/util/colors.dart';
import 'package:ecommerce_ui_kit/util/string_config.dart';
import 'package:flutter/material.dart';
import '../../../util/size_config.dart';

// ignore: must_be_immutable
class ButtonCommon extends StatelessWidget {
  String? text;
  VoidCallback? onTap;
  Color? textColor;
  Color? buttonColor;

  ButtonCommon(
      {super.key, this.text, this.buttonColor, this.textColor, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height50,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(height55),
          color: buttonColor ?? appColor,
        ),
        child: InkWell(
            onTap: onTap,
            child: Center(
                child: Text(text!,
                    style: TextStyle(
                      color: textColor ?? titleColor,
                      fontFamily: StringConfig.poppins,
                      fontWeight: FontWeight.w500,
                      fontSize: height16,
                    )))));
  }
}
