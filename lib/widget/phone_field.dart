import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../PhoneField/intl_phone_field.dart';
import '../util/colors.dart';
import '../util/size_config.dart';
import '../util/string_config.dart';

// ignore: must_be_immutable
class PhoneNumberField extends StatelessWidget {
  PhoneNumberField({Key? key}) : super(key: key);
  final phoneController = TextEditingController();
  var phoneNumber = "1234567890";

  @override
  Widget build(BuildContext context) {
    phoneController.text = phoneNumber;
    return IntlPhoneField(
        controller: phoneController,
        dropdownIconPosition: IconPosition.trailing,
        decoration: InputDecoration(
            labelText: StringConfig.phoneNumber,
            hintStyle: const TextStyle(
              fontFamily: StringConfig.poppins,
              color: greyColor,
              fontWeight: FontWeight.w400,
              fontSize: fontSize14,
            ),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12.0)),
              borderSide: BorderSide(
                color: containerBorderColor,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(size10),
              borderSide: const BorderSide(
                color: containerBorderColor,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(width10),
              borderSide: const BorderSide(
                color: containerBorderColor,
              ),
            ),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(width10),
                borderSide: const BorderSide(
                  color: error,
                ))),
        keyboardType: TextInputType.phone,
        initialCountryCode: 'IN',
        showCountryFlag: false,
        textAlign: TextAlign.left,
        onChanged: (phone) {
          if (kDebugMode) {
            print(phone.completeNumber);
          }
        },
        onCountryChanged: (country) {
          if (kDebugMode) {
            print(StringConfig.countryChangedTo + country.name);
          }
        });
  }
}
