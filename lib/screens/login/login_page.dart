import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'package:kafechi/shared/fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.grey[900],
        // # نوار بالا
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.black38,
          leading: Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(Icons.arrow_back_ios_rounded)),
          ),
          title: const Text(
            "ورود و ثبت نام",
            style: Fonts.lg,
          ),
        ),
      ),
    );
  }
}
