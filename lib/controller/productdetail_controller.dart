import 'package:get/get.dart';

class ProDetailController extends GetxController {
  var item = 0.obs;
  void incrementCounter() {
    item.value++;
  }
  void decrementCounter() {
    item.value--;
  }
}
