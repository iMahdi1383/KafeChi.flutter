import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screens/home/home_page.dart';
import 'screens/product/product_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final ThemeData myTheme = ThemeData(
    textTheme: const TextTheme(
      bodyLarge: TextStyle(fontFamily: 'dana'),
      bodyMedium: TextStyle(fontFamily: 'dana'),
      displayLarge: TextStyle(
          fontFamily: 'dana', fontSize: 72.0, fontWeight: FontWeight.bold),
      titleLarge: TextStyle(
          fontFamily: 'dana', fontSize: 36.0, fontStyle: FontStyle.italic),
    ),
  );

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'کافه چی',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.brown,
      ),
      getPages: [
        GetPage(name: "/home", page: () => const HomePage()),
        GetPage(name: "/product", page: () => const ProductPage()),
      ],
      home: const Directionality(
        textDirection: TextDirection.rtl,
        child: HomePage(),
      ),
    );
  }
}
