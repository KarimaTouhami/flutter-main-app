import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductListController extends GetxController{
  RxInt currentIndex = 0.obs;
  RxDouble startVal=0.0.obs;
  RxDouble endVal=70.00.obs;
  RangeValues rangeValues =   const RangeValues(40, 80);
  void updateRangeValues(RangeValues values) {
      rangeValues = values;
  }
}