import "package:flutter/material.dart";
import "package:get/get_navigation/get_navigation.dart";
import "package:provider/provider.dart";

import "package:kafechi/routes.dart";
import "package:kafechi/provider/product_provider.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProductProvider(),
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: "کافه چی",
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
            brightness: Brightness.dark,
            primarySwatch: Colors.deepPurple,
          ),
        ),
        getPages: getPages,
        initialRoute: Routes.home,
      ),
    );
  }
}
