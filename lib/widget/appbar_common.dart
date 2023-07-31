import 'package:ecommerce_ui_kit/util/colors.dart';
import 'package:ecommerce_ui_kit/util/string_config.dart';
import 'package:flutter/material.dart';
import '../util/size_config.dart';

class AppBarWidget extends StatelessWidget {
  final String? text;
  final String? leadingIcon;
  final String? trailingIcon;
  final Function()? leadingOnTap;
  final Function()? trailingOnTap;

  const AppBarWidget({
    super.key,
    this.text,
    this.leadingIcon,
    this.trailingIcon,
    this.leadingOnTap,
    this.trailingOnTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      leadingIcon == null
          ? const SizedBox(
              width: height24,
            )
          : InkWell(
              onTap: leadingOnTap,
              child: SizedBox(
                  height: height24,
                  width: height24,
                  child: Image.asset(
                    leadingIcon!,
                    height: height24,
                    width: height24,
                    color: arrowColor,
                  ))),
      Text(text ?? "",
          style: const TextStyle(
            fontFamily: StringConfig.poppins,
            color: titleColor,
            fontWeight: FontWeight.w400,
            fontSize: height20,
          )),
      trailingIcon == null
          ? const SizedBox(
              width: height22,
            )
          : InkWell(
              onTap: trailingOnTap,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: size4),
                child: Image.asset(
                  trailingIcon!,
                  height: height22,
                  width: height22,
                ),
              ))
    ]);
  }
}
