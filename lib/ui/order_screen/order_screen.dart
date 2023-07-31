import 'package:ecommerce_ui_kit/config/asset_image_paths.dart';
import 'package:ecommerce_ui_kit/ui/order_screen/widget_order/order_container_widget.dart';
import 'package:ecommerce_ui_kit/util/size_config.dart';
import 'package:ecommerce_ui_kit/util/string_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../config/routes/app_routes.dart';
import '../../util/colors.dart';
import '../../widget/appbar_common.dart';

// ignore: must_be_immutable
class OrderScreen extends StatelessWidget {
  OrderScreen({Key? key}) : super(key: key);

  List<Map<String, dynamic>> orderList = [
    {
      "buttonColor": appColor,
      "text": StringConfig.delivered,
    },
    {
      "buttonColor": appColor,
      "text": StringConfig.delivered,
    },
    {
      "buttonColor": cancelOrderColor,
      "text": StringConfig.cancels,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: PreferredSize(
                preferredSize: const Size.fromHeight(height50),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AppBarWidget(
                    leadingIcon: AssetImagePaths.arrow,
                    leadingOnTap: () {
                      Navigator.pop(context);
                    },
                    trailingIcon: AssetImagePaths.search,
                    trailingOnTap: () {
                      Get.toNamed(AppRoutes.searchScreen);
                    },
                    text: StringConfig.myOrders,
                  ),
                )),
            body: SingleChildScrollView(
                child: Column(children: [
                  ...List.generate(
                3,
                (index) => OrderContainerWidget(
                    buttonColor: orderList[index]["buttonColor"],
                    text: orderList[index]["text"]),
              ),
              const Text(StringConfig.seeMore,
                  style: TextStyle(
                    fontFamily: StringConfig.poppins,
                    color: appColor,
                    fontWeight: FontWeight.w400,
                    fontSize: height16,
                  )),
            ]))));
  }
}
