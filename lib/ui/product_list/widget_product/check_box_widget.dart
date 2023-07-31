import 'package:ecommerce_ui_kit/util/string_config.dart';
import 'package:flutter/material.dart';
import '../../../util/colors.dart';
import '../../../util/size_config.dart';

class CheckBoxWidget extends StatefulWidget {
  final String? text;
  final String? size;

  const CheckBoxWidget({super.key, this.text, this.size});

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: size6),
          child: InkWell(
            onTap: () {
              setState(() {
                selected = !selected;
              });
            },
            child: Container(
              height: selected ? height17 : height18,
              width: selected ? height17 : height18,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(size6),
                  color: selected ? appColor : Colors.white,
                  border: Border.all(
                      width: size1_5,
                      color: selected ? appColor : containerBorderColor)),
              child: Padding(
                  padding: const EdgeInsets.all(0.1),
                  child: selected
                      ? const Icon(
                          Icons.check,
                          size: height14,
                          color: Colors.white,
                        )
                      : Container()),
            ),
          )),
      Text(widget.text!,
          style: const TextStyle(
            fontFamily: StringConfig.poppins,
            color: greyColor,
            fontWeight: FontWeight.w400,
            fontSize: height14,
          )),
      const SizedBox(
        width: size3,
      ),
      Text(widget.size!,
          style: const TextStyle(
            fontFamily: StringConfig.poppins,
            color: greyColor,
            fontWeight: FontWeight.w400,
            fontSize: height14,
          ))
    ]);
  }
}
