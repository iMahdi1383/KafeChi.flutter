import "package:flutter/material.dart";
import "package:animated_splash_screen/animated_splash_screen.dart";
import "package:kafechi/screens/login/login_screen.dart";
import "package:page_transition/page_transition.dart";
import "package:flutter_svg/flutter_svg.dart";

import "package:kafechi/shared/colors.dart";
import "package:kafechi/shared/icons.dart";
import "package:kafechi/routes.dart";

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      nextScreen: const LoginScreen(),
      animationDuration: const Duration(seconds: 3),
      duration: 0,
      nextRoute: Routes.wrapper,
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.rotate,
      backgroundColor: ColorPalette.accent,
      splash: Column(
        children: [
          SvgPicture.asset(
            IconPaths.mobile,
            color: Colors.white,
            width: 75,
            height: 75,
          ),
        ],
      ),
    );
  }
}
