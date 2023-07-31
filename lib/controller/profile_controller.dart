import 'package:get/get.dart';

class ProfileController extends GetxController {
  RxString selectedGender = "".obs;

  void changeLanguage(String language) {
  }

  final List<String> languages = ['Male', 'Female', 'Other'].obs;
}
