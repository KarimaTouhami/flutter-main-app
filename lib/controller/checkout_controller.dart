import 'package:ecommerce_ui_kit/config/asset_image_paths.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../config/routes/app_routes.dart';
import '../util/colors.dart';

class CheckOntController extends GetxController {
  Widget buildPopupDialog(BuildContext context) {
    return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Image.asset(
                  AssetImagePaths.popup,
                  height: 150,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                  "Congratulation Order\n"
                  "Confirmed",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Poppins",
                    color: titleColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  )),
              const Text("Thanks for your order",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    color: greyColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  )),
              const Text("Order Id #458596",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    color: titleColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                  )),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                child: Container(
                  width: Get.width / 1.7,
                  height: 40,
                  decoration: BoxDecoration(
                      color: appColor, borderRadius: BorderRadius.circular(53)),
                  child: const Center(
                      child: Text(
                    "View Order",
                    style: TextStyle(
                      color: wightColor,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                  )),
                ),
                onTap: (){
                  Get.toNamed(AppRoutes.myOrderScreen);
                },
              ),

              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                child: Container(
                  width: Get.width / 1.7,
                  height: 40,
                  decoration: BoxDecoration(
                      color: rowColor, borderRadius: BorderRadius.circular(53)),
                  child: const Center(
                      child: Text(
                    "Continue Shopping",
                    style: TextStyle(
                      color: titleColor,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                  )),
                ),
                onTap: (){
                  Get.toNamed(AppRoutes.homeScreen);
                },
              )
            ]));
  }
}
