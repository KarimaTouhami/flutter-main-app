import 'package:ecommerce_ui_kit/util/colors.dart';
import 'package:ecommerce_ui_kit/util/string_config.dart';
import 'package:flutter/material.dart';
import '../../../util/size_config.dart';

// ignore: must_be_immutable
class ContainerCommon extends StatelessWidget {
  String? hintText;
  TextEditingController? controller;

  ContainerCommon({
    super.key,
    this.hintText,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height52,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: containerBorderColor,
          ),
        ),
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: height20),
            child: TextFormField(
                controller: controller!,
                decoration: InputDecoration(
                  hintText: hintText!,
                  hintStyle: const TextStyle(
                    color: textfeildColor,
                    fontSize: height14,
                    fontFamily: StringConfig.poppins,
                    fontWeight: FontWeight.w400,
                  ),
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                ))));
  }
}
