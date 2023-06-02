import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:kafechi/shared/colors.dart';

class AkButton extends StatelessWidget {
  final String text;
  final String? icon;
  const AkButton({super.key, required this.text, this.icon});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        backgroundColor: ColorPalette.accent,
        foregroundColor: Colors.white,
      ),
      onPressed: () {},
      child: Align(
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if(icon!=null) SvgPicture.asset(icon ?? "", color: Colors.white),
            if(icon!=null) const SizedBox(width: 15),
            Text(
              text,
              style : const TextStyle(
                fontFamily: "dana",
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
