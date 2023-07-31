import 'package:flutter/material.dart';
import '../util/colors.dart';
import '../util/size_config.dart';
import '../util/string_config.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final String? labalText;
  final Widget? suffixIcon;
  final bool? isObsecureText;

  const CustomTextField({
    super.key,
    Key? a,
    this.controller,
    this.validator,
    this.labalText,
    this.suffixIcon,
    this.isObsecureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          labelText: labalText,
          labelStyle: const TextStyle(
            fontFamily: StringConfig.poppins,
            color: greyColor,
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
          suffixIcon: suffixIcon ?? const SizedBox(),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
            borderSide: BorderSide(
              color: containerBorderColor,
              width: 1,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(size10),
            borderSide: const BorderSide(color: containerBorderColor, width: 1),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(size10),
            borderSide: const BorderSide(
              color: error,
              width: 1,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: error,
                width: 1,
              ))),
      validator: validator,
      obscureText: isObsecureText ?? false,
    );
  }
}
