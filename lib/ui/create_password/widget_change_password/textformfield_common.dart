// import 'package:ecommerce_ui_kit/util/string_config.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
//
// import '../../../ controller/homecontroller.dart';
// import '../../../ controller/setting_controller.dart';
// import '../../../util/colors.dart';
// import '../../../util/size_config.dart';
//
// class CommonTextField extends StatelessWidget {
//   String? hintText;
//   String? lebalText;
//
//   CommonTextField({this.hintText, this.lebalText});
//
//    final changePassController = Get.put(HomeController());
//
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       obscureText: changePassController.visiblty.value,
//       decoration: InputDecoration(
//         suffixIcon: GestureDetector(
//             onTap: () {
//               changePassController.visiblty.value = !changePassController.visiblty.value;
//             },
//             child: changePassController.visiblty.isTrue
//                 ? Icon(Icons.visibility_off_outlined, color: greyColor.withOpacity(0.4))
//                 : Icon(Icons.remove_red_eye, color: appColor)),
//         hintText: hintText!,
//         hintStyle: TextStyle(
//           color: textfeildColor,
//           fontSize: height14,
//           fontFamily: StringConfig.Poppins,
//           fontWeight: FontWeight.w400,
//         ),
//         labelText: lebalText!,
//         labelStyle: TextStyle(
//           color: greyColor.withOpacity(size0_5),
//         ),
//         border: InputBorder.none,
//       ),
//     );
//   }
// }
//

import 'package:flutter/material.dart';

class PasswordFormField extends StatefulWidget {
  const PasswordFormField({super.key,

    required this.onSaved,
    required this.validator,
    this.autoValidateMode = AutovalidateMode.disabled,
    this.decoration = const InputDecoration(),
    this.obscureText = true,
  });

  final void Function(String?) onSaved;
  final String? Function(String?) validator;
  final AutovalidateMode autoValidateMode;
  final InputDecoration decoration;
  final bool obscureText;

  @override
  // ignore: library_private_types_in_public_api
  _PasswordFormFieldState createState() => _PasswordFormFieldState();
}

class _PasswordFormFieldState extends State<PasswordFormField> {
  bool _obscureText = true;

  void _toggleObscureText() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: widget.onSaved,
      validator: widget.validator,
      autovalidateMode: widget.autoValidateMode,
      decoration: widget.decoration.copyWith(
        suffixIcon: IconButton(
          icon: Icon(
            _obscureText ? Icons.visibility : Icons.visibility_off,
          ),
          onPressed: _toggleObscureText,
        ),
      ),
      obscureText: _obscureText,
    );
  }
}

