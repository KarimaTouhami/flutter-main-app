import 'package:ecommerce_ui_kit/controller/on_bording_controller.dart';
import 'package:ecommerce_ui_kit/config/asset_image_paths.dart';
import 'package:ecommerce_ui_kit/config/routes/app_routes.dart';
import 'package:ecommerce_ui_kit/util/colors.dart';
import 'package:ecommerce_ui_kit/util/size_config.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../util/string_config.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _pageController = PageController(initialPage: 0);

  final onBoardingController = Get.put(OnBoardingController());
  final List<String> _titles = [
    StringConfig.onlineShopping,
    StringConfig.fastDelivery,
    StringConfig.returns
  ];

  final List<String> _descriptions = [
    StringConfig.onBoardingText,
    StringConfig.onBoardingText,
    StringConfig.onBoardingText,
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
            children: [
          Obx(() => Column(
              children:[
            Padding(
                  padding:  const EdgeInsets.only(top: 2,left: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      onBoardingController.pageViewIndex.value == 1 ||
                          onBoardingController.pageViewIndex.value == 2
                          ? GestureDetector(
                             onTap: (){
                        if (onBoardingController.pageViewIndex.value > 0) {
                          _pageController.previousPage(
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.easeOut,
                          );
                          setState(() {
                            onBoardingController.pageViewIndex.value--;
                          });
                        }
                        if (kDebugMode) {
                          print(onBoardingController.pageViewIndex.value);
                        }
                      },
                              child: Container(
                                padding: const EdgeInsets.all(size3),
                                height: height30,
                                width: height30,
                                child: Image.asset(
                                  AssetImagePaths.arrow,
                                  height: height15,
                                  width: height15,
                                  color: arrowColor,
                                ),
                              ),
                            )
                          : Container(),
                      TextButton(
                          onPressed: () {
                            Get.toNamed(AppRoutes.loginScreen);
                          },
                          child: const Text(StringConfig.skip,
                              style: TextStyle(
                                fontFamily: StringConfig.poppins,
                                color: appColor,
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.w500,
                                fontSize: height16,
                              )))
                    ],
                  ),
                ),
                Expanded(
                  child: PageView.builder(
                    controller: _pageController,
                    allowImplicitScrolling: true,
                    onPageChanged: (value) {
                      onBoardingController.pageViewIndex.value = value;
                    },
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      index = onBoardingController.pageViewIndex.value;
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/onboarding/onbording${index + 1}.png',
                            height: height277,
                            width: height277),
                          const SizedBox(height: height20),
                          Text(_titles[index],
                            style: const TextStyle(
                                fontFamily: StringConfig.poppins,
                                fontSize: height26,
                                fontWeight: FontWeight.w600,
                                color: titleColor),
                          ),
                          const SizedBox(height: height10),
                          Text(_descriptions[index],
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontFamily: StringConfig.poppins,
                                fontSize: height14,
                                fontWeight: FontWeight.w400,
                                color: appSubText),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                onBoardingController.pageViewIndex.value == 2
                    ? Padding(
                        padding: const EdgeInsets.all(height40),
                        child: GestureDetector(
                          child: Container(
                            height: height52,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: appColor,
                                borderRadius: BorderRadius.circular(height53)),
                            child: const Center(
                              child: Text(
                                StringConfig.getStarted,
                                style: TextStyle(
                                  fontFamily: StringConfig.poppins,
                                  color: wightColor,
                                  fontSize: height16,
                                ),
                              )
                            )
                          ),
                          onTap: () {
                            Get.toNamed(AppRoutes.loginScreen);
                          },
                        ))
                    : GestureDetector(
                        onTap: () {
                          onBoardingController.pageViewIndex.value += 1;
                          if (kDebugMode) {
                            print(onBoardingController.pageViewIndex.value);
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: height40),
                          child: Image(
                            image: AssetImage(
                                onBoardingController.pageViewIndex.value == 0
                                    ? AssetImagePaths.pageoneloading
                                    : AssetImagePaths.pagetwoloading),
                            height: height60,
                            width: height60,
                          ),
                        ))
              ])),
          Positioned(
              top: height60,
              left: -60,
              child: Image.asset(
                AssetImagePaths.polygonup,
                height: height160,
                width: height189,
              )),
          Positioned(
              bottom: size13,
              right: -50,
              child: Image.asset(
                AssetImagePaths.polygondown,
                height: height189,
                width: height189,
              )),
        ]),
      ),
    );
  }
}




