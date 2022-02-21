import 'package:flutter_boilerplate/modules/home/home_page.dart';
import 'package:flutter_boilerplate/modules/login/sign_in_page.dart';
import 'package:get/get.dart';
import 'package:flutter_boilerplate/modules/splash/splash_page.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashPage(),
    ),
    GetPage(
      name: Routes.SIGN_IN,
      page: () => SignInPage(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
    ),
  ];
}
