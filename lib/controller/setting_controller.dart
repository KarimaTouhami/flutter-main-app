
import 'package:get/get.dart';

class SettingController extends GetxController {
  var switchValue = false.obs;
  void toggleSwitch(value) {
    switchValue.value = value;
  }
  var selectedLanguage = 'English'.obs;
  void changeLanguage(String language) {
    selectedLanguage.value = language;
  }
  final List<String> languages = [
    'English',
    'Gujarati',
    'Spanish',
    'French',
    'German',
    'Italian',
  ].obs;
}