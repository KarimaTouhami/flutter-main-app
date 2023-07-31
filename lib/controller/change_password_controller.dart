
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ChangePasswordController extends GetxController {
  TextEditingController controller = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var passwordVisible = false.obs;
  var hidePassword = false.obs;
  var isVisibility = false.obs;
}