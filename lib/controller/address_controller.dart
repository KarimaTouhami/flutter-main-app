import 'package:get/get.dart';


class AddressController extends GetxController {


  void changeLanguage(String language) {
    selectedState.value = language;
  }
   var selectedState = "State".obs;

  final List<String> languages = [
    'uttarakhand',
    'rajasthan',
    'uttar pradesh',
    'delhi',
    'mumbai',
    'Gujrat'].obs;

  var selectedcountry = 'Country'.obs;

  void selectedCountry(String countryname) {
    selectedcountry.value = countryname;
  }

  final List<String> country = [
    'India',
    'Canada',
    'Jarmany',
    'Australia',
    'Armenia',
    'China '
  ].obs;
}