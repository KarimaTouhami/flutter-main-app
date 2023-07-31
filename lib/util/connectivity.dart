
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ConnectivityService {
  static Future<bool> checkInternetConnectivity() async {
    final ConnectivityResult connectivityResult =
    await Connectivity().checkConnectivity();
    if (connectivityResult == ConnectivityResult.mobile) {
      return true;
    } else if (connectivityResult == ConnectivityResult.wifi) {
      return true;
    } else if (connectivityResult == ConnectivityResult.none) {
     Fluttertoast.showToast(msg: "Please check your internet connection!");
      return false;
    } else {
      return false;
    }}}
