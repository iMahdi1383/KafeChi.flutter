import 'package:get/get_navigation/get_navigation.dart';

import 'package:kafechi/screens/home/home_page.dart';
import 'package:kafechi/screens/login/login_page.dart';
import 'package:kafechi/screens/product/product_page.dart';

class Routes {
  static String home = '/home';
  static String product = '/product';
  static String login = '/login';
}

final getPages = [
  GetPage(
    name: Routes.home,
    page: () => const HomePage(),
  ),
  GetPage(
    name: Routes.product,
    page: () => ProductPage(),
  ),
  GetPage(
    name: Routes.login,
    page: () => const LoginPage(),
  ),
];
