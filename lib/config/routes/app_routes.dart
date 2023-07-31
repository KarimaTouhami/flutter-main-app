import 'package:ecommerce_ui_kit/ui/create_password/create_password.dart';
import 'package:ecommerce_ui_kit/ui/home_screen/home_screen.dart';
import 'package:ecommerce_ui_kit/ui/loginscreen/login_screen.dart';
import 'package:ecommerce_ui_kit/ui/order_screen/order_screen.dart';
import 'package:ecommerce_ui_kit/ui/otp_verification/otp_varification_screen.dart';
import 'package:ecommerce_ui_kit/ui/product_list/product_list_screen.dart';
import 'package:ecommerce_ui_kit/ui/reset_password/reset_password_screen.dart';
import 'package:ecommerce_ui_kit/ui/search_screen/search_screen.dart';
import 'package:ecommerce_ui_kit/ui/splash_screen/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import '../../ui/address_screen/address_screen.dart';
import '../../ui/address_screen/new_address.dart';
import '../../ui/categories_screen/categories.dart';
import '../../ui/checkout_screen/checkout_screen.dart';
import '../../ui/create_password/change_password_screen.dart';
import '../../ui/delete_account_screen/delete_account_screen.dart';
import '../../ui/favourites_screen/favourite_screen.dart';
import '../../ui/onboarding_screen/onboarding_screen.dart';
import '../../ui/otp_verification/forgot_verification.dart';
import '../../ui/payment_screen/my_payments_screen.dart';
import '../../ui/payment_screen/payment_screen.dart';
import '../../ui/product_details_screen/product_details_screen.dart';
import '../../ui/profile_screen/edit_profile_screen.dart';
import '../../ui/profile_screen/profille_screen.dart';
import '../../ui/setting_screen/setting_screen.dart';
import '../../ui/shopping_bag_screen/coupon_apply_screen.dart';
import '../../ui/shopping_bag_screen/coupon_succsess_screen.dart';
import '../../ui/shopping_bag_screen/empty_shopping_screen.dart';
import '../../ui/shopping_bag_screen/shopping_bag_screen.dart';
import '../../ui/signup_screen/signup_screen.dart';

class AppRoutes {
  static const String splashScreen = '/SplashScreen';

  static const String onboadingScreen = '/Onloadingscreen';

  static const String loginScreen = '/Loginscreen';

  static const String otpVerificationScreen = '/otpVerificationScreen';

  static const String resetPasswordScreen = '/resetPasswordScreen';

  static const String createPasswordScreen = '/createPasswordScreen';

  static const String signInScreen = '/signInScreen';

  static const String homeScreen = '/HomeScreen';

  static const String categorieScreen = '/categorieScreen';

  static const String productListScreen = '/ProductListScreen';

  static const String aseelCapitalscreen = '/AseelCapitalscreen';

  static const String aseelMapscreen = '/AseelMapscreen';

  static const String appNavigationScreen = '/app_navigation_screen';
  static const String myOrderScreen = '/myOrderScreen';
  static const String myPaymentsAScreen = '/MyPaymentsAScreen';
  static const String shoppingScreen = '/ShoppingScreen';
  static const String couponApplyScreen = '/CouponApplyScreen';
  static const String couponSuccsessSCreen = '/CouponSuccsessSCreen';
  static const String emptyShoppingScreen = '/EmptyShoppingScreen';
  static const String addressScreen = '/AddressScreen';
  static const String newAddressScreen = '/NewAddressScreen';
  static const String checkoutScreen = '/CheckoutScreen';
  static const String profileScreen = '/ProfileScreen';
  static const String settingScreen = '/SettingScreen';
  static const String editProfileScreen = '/EditProfileScreen';
  static const String productDetailScreen = '/ProductDetailScreen';
  static const String favouriteScreen = '/FavouriteScreen';
  static const String paymentScreen = '/PaymentScreen';
  static const String changePasswordScreen = '/ChangePasswordScreen';
  static const String deleteAccountScreen = '/DeleteAccountScreen';
  static const String searchScreen = '/SearchScreen';
  static const String forgotVerification = '/ForgotVerification';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => const SplashScreen(),
    onboadingScreen: (context) => const OnBoardingScreen(),
    loginScreen: (context) => LoginScreen(),
    otpVerificationScreen: (context) => OtpVerificationScreen(),
    resetPasswordScreen: (context) => ResetPasswordScreen(),
    createPasswordScreen: (context) => CreatePasswordScreen(),
    signInScreen: (context) => SignInScreen(),
    homeScreen: (context) =>  HomeScreen(),
    categorieScreen: (context) => const CategoryScreen(),
    productListScreen: (context) => const ProductListScreen(),
    myOrderScreen: (context) => OrderScreen(),
    myPaymentsAScreen: (context) => const MyPaymentsAScreen(),
    shoppingScreen: (context) => const ShoppingScreen(),
    couponApplyScreen: (context) => const CouponApplyScreen(),
    couponSuccsessSCreen: (context) => const CouponSuccessScreen(),
    emptyShoppingScreen: (context) => const EmptyShoppingScreen(),
    addressScreen: (context) => const AddressScreen(),
    newAddressScreen: (context) => NewAddressScreen(),
    checkoutScreen: (context) => const CheckoutScreen(),
    profileScreen: (context) => ProfileScreen(),
    settingScreen: (context) => SettingScreen(),
    editProfileScreen: (context) => EditProfileScreen(),
    productDetailScreen: (context) => const ProductDetailScreen(),
    favouriteScreen: (context) => const FavouriteScreen(),
    paymentScreen: (context) => const PaymentScreen(),
    changePasswordScreen: (context) => ChangePasswordScreen(),
    deleteAccountScreen: (context) => const DeleteAccountScreen(),
    searchScreen: (context) => SearchScreen(),
    forgotVerification: (context) => ForgotVerification(),
  };
}
