import "package:firebase_auth/firebase_auth.dart";
import "package:flutter/material.dart";
import "package:get/route_manager.dart";

import "package:kafechi/shared/fonts.dart";
import "package:kafechi/shared/colors.dart";
import "package:kafechi/shared/icons.dart";

import "package:kafechi/shared/ak_widgets/ak_textfield.dart";
import "package:kafechi/shared/ak_widgets/ak_button.dart";

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: ColorPalette.background,
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
                    "lib/assets/images/login.png",
                    height: 250,
                  ),
                ),
                const SizedBox(height: 20),
                AkTextField(
                  controller: emailController,
                  placeholder: "ایمیل",
                  icon: IconPaths.user,
                ),
                const SizedBox(height: 20),
                AkTextField(
                    controller: passwordController,
                    placeholder: "رمز عبور",
                    icon: IconPaths.lock),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: AkButton(
                          text: "ثبت نام",
                          borderColor: ColorPalette.accent,
                          onTap: () => Get.toNamed("/signup"),
                        )),
                    const SizedBox(width: 20),
                    Expanded(
                        flex: 3,
                        child: AkButton(
                          onTap: () {
                            FirebaseAuth.instance.signInWithEmailAndPassword(
                              email: emailController.text.trim(),
                              password: passwordController.text.trim(),
                            );
                          },
                          text: "ورود",
                          icon: IconPaths.login,
                          backgroundColor: ColorPalette.accent,
                        )),
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
