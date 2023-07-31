
import 'package:csc_picker/csc_picker.dart';
import 'package:ecommerce_ui_kit/util/string_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/address_controller.dart';
import '../../config/asset_image_paths.dart';
import '../../config/routes/app_routes.dart';
import '../../util/colors.dart';
import '../../util/size_config.dart';
import '../../widget/appbar_common.dart';
import '../../widget/textfield.dart';
import '../loginscreen/widget_login/common_button.dart';

// ignore: must_be_immutable
class NewAddressScreen extends StatelessWidget {
  NewAddressScreen({Key? key}) : super(key: key);

  final AddressController addressController = Get.put(AddressController());
  final formKey = GlobalKey<FormState>();
  String userEmail = '';
  String password = '';
  String? state;
  String? country;
  String countryValue = "";
  String stateValue = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: PreferredSize(
                preferredSize: const Size.fromHeight(height100),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AppBarWidget(
                    leadingIcon: AssetImagePaths.arrow,
                    leadingOnTap: () {
                      Get.back();
                      },
                    text: StringConfig.address,
                  ),
                )),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: height15),
                child: Column(
                  children: [
                    const SizedBox(
                      height: height10,
                    ),
                    const Text(StringConfig.addNewAddress,
                        style: TextStyle(
                          fontFamily: StringConfig.poppins,
                          color: titleColor,
                          fontWeight: FontWeight.w500,
                          fontSize: height14,
                        )),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: height10),
                      child: Form(
                          key: formKey,
                          child: Column(children:  [
                            const CustomTextField(
                              labalText:StringConfig.street,
                            ),
                            const SizedBox(
                              height: height25,
                            ),
                            const CustomTextField(
                              labalText: StringConfig.street_2,
                            ),
                            const SizedBox(
                              height: height25,
                            ),
                            const CustomTextField(
                              labalText: StringConfig.landmark,
                            ),
                            const SizedBox(
                              height: height25),
                            const CustomTextField(
                              labalText:  "City" ),
                            const SizedBox(
                              height: height25,
                            ),
                            const CustomTextField(
                              labalText:  StringConfig.pinCode),
                            const SizedBox(height: height25),
                            CSCPicker(
                                showStates: true,
                                ///Enable (get flat with country name) / Disable (Disable flag) / ShowInDropdownOnly (display flag in dropdown only) [OPTIONAL PARAMETER]
                                dropdownDecoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                                    color: Colors.white,
                                    border: Border.all(color:  containerBorderColor, width: 1)),
                                    flagState: CountryFlag.DISABLE,

                                ///Disabled Dropdown box decoration to style your dropdown selector [OPTIONAL PARAMETER]  (USE with disabled dropdownDecoration)
                                disabledDropdownDecoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                                    color: Colors.white,
                                    border: Border.all(color: containerBorderColor, width: 1)),

                                ///selected item style [OPTIONAL PARAMETER]
                                selectedItemStyle: const TextStyle(color: Colors.black, fontSize: 14),

                                ///DropdownDialog Heading style [OPTIONAL PARAMETER]
                                dropdownHeadingStyle: const TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),
                                ///DropdownDialog Item style [OPTIONAL PARAMETER]
                                dropdownItemStyle: const TextStyle(color: Colors.black,fontSize: 14),
                                ///Dialog box radius [OPTIONAL PARAMETER]
                                dropdownDialogRadius: 10,
                                ///Search bar radius [OPTIONAL PARAMETER]
                                searchBarRadius: 10,
                                ///triggers once country selected in dropdown
                                onCountryChanged: (value) {
                                    ///store value in country variable
                                    countryValue = value;
                                    },
                                ///triggers once state selected in dropdown
                                onStateChanged: (value) {
                                    ///store value in state variable
                                    stateValue = value??"";
                                    },
                                ///triggers once city selected in dropdown
                                onCityChanged: (value) {
                                    ///store value in city variable
                                    // cityValue = value??"";
                                }
                            ),
                          ])),
                    ),
                    const SizedBox(height: height30),
                    ButtonCommon(
                      textColor: wightColor,
                      text: StringConfig.saveNewAddress,
                      onTap: () {
                        Get.toNamed(AppRoutes.addressScreen);
                      },
                      buttonColor: appColor,
                    ),
                    SizedBox(
                      height: Get.height / 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: height15),
                      child: ButtonCommon(
                        textColor: titleColor,
                        text: StringConfig.cancels,
                        onTap: () {},
                        buttonColor: rowColor,
                      ),
                    )
                  ]
                )
              )
            )));
  }
}
