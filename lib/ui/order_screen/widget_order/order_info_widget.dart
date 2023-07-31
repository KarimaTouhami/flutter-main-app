import 'package:ecommerce_ui_kit/util/string_config.dart';
import 'package:flutter/material.dart';
import '../../../util/colors.dart';

class OrderRowWidget extends StatelessWidget {
  final String? icon;
  final String? title;
  final String? decp;

  const OrderRowWidget({super.key, this.icon, this.title, this.decp});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        decoration: BoxDecoration(
          color: wightColor.withOpacity(0.7),
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: dollarTextColor.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 2,
              offset: const Offset(0.1, 0.1), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
            padding: const EdgeInsets.all(6),
            child: Row(children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: wightColor.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: appColor)),
                child: Padding(
                  padding: const EdgeInsets.all(9),
                  child: Image.asset(
                    icon!,
                    height: 15,
                    width: 15,
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title!,
                            style: const TextStyle(
                              fontFamily: StringConfig.poppins,
                              color: greyColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            )),
                        Text(decp!,
                            style: const TextStyle(
                              fontFamily: StringConfig.poppins,
                              color: textfeildColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 11,
                            ))
                      ])),
              const Spacer(),
              const Icon(
                Icons.arrow_forward_ios_outlined,
                size: 15,
                color: titleColor,
              )
            ])));
  }
}
