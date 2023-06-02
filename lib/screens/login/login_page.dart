import "package:flutter/material.dart";
import "package:get/route_manager.dart";

import "package:kafechi/shared/fonts.dart";
import "package:kafechi/shared/colors.dart";
import "package:kafechi/shared/icons.dart";

import 'package:kafechi/shared/ak_widgets/ak_textfield.dart';
import 'package:kafechi/shared/ak_widgets/ak_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: ColorPalette.background,
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
            "ورود به اپلیکیشن",
            style: Fonts.lg,
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Image.asset(
                    'lib/assets/images/login.png',
                    // height: 50,
                  ),
                ),
                const SizedBox(height: 20),
                AkTextField(placeholder: "نام کاربری", icon: IconPaths.user),
                const SizedBox(height: 20),
                AkTextField(placeholder: "رمز عبور", icon: IconPaths.lock),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(15),
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: ColorPalette.accent,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Center(
                            child: Text(
                              "ثبت نام",
                              style: TextStyle(
                                fontFamily: "dana",
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                                color: ColorPalette.accent,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                        flex: 3,
                        child: AkButton(text: 'ورود', icon: IconPaths.login)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
