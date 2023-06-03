import "package:get/get_navigation/get_navigation.dart";

import "package:kafechi/screens/home/home_screen.dart";
import "package:kafechi/screens/splash/splash_screen.dart";
import "package:kafechi/screens/login/login_screen.dart";
import "package:kafechi/screens/signup/signup_screen.dart";
import "package:kafechi/screens/product/product_screen.dart";

class Routes {
  static String home = "/";
  static String splash = "/splash";
  static String login = "/login";
  static String signup = "/signup";
  static String product = "/product";
}

final getPages = [
  GetPage(
    name: Routes.home,
    page: () => const HomeScreen(),
  ),
  GetPage(
    name: Routes.splash,
    page: () => const SplashScreen(),
  ),
  GetPage(
    name: Routes.login,
    page: () => const LoginScreen(),
  ),
  GetPage(
    name: Routes.signup,
    page: () => const SignupScreen(),
  ),
  GetPage(
    name: Routes.product,
    page: () => ProductScreen(),
  ),
];
