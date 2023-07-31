import 'package:ecommerce_ui_kit/util/colors.dart';
import 'package:ecommerce_ui_kit/util/string_config.dart';
import 'package:flutter/material.dart';
import '../../../util/size_config.dart';

class CustomProgressBar extends StatelessWidget {
  final String text;
  final double width;
  final int value;
  final int totalValue;

  const CustomProgressBar({super.key, required this.text,required this.width, required this.value, required this.totalValue});

  @override
  Widget build(BuildContext context) {
    double ratio = value / totalValue;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: size6),
      child: Row(
        children: [
          Text(text,
              style: const TextStyle(
                fontFamily: StringConfig.poppins,
                color: greyColor,
                fontWeight: FontWeight.w400,
                fontSize: height16,
              )
          ),
          const SizedBox(width: size5,),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Container(
                      width: width,
                      height: size10,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(size5),
                          color: Colors.grey[300]),
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(size5),
                      child: AnimatedContainer(
                          height: size11,
                          width: width * ratio,
                          duration: Duration(milliseconds: totalValue),
                          decoration: BoxDecoration(
                              color: appColor,
                              borderRadius: BorderRadius.circular(size5)
                          )
                      ),
                    ),
                  ],
                )
              ]
          ),
        ],
      ),
    );
  }
}
class TimeState with ChangeNotifier{
  int _time = 100;
  int get time => _time;
  set time(int newTime){
    _time = newTime;
    notifyListeners();
  }
}