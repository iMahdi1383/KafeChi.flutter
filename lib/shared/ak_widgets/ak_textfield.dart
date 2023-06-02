import "package:flutter/material.dart";
import "package:flutter_svg/svg.dart";

import "package:kafechi/shared/fonts.dart";

class AkTextField extends StatelessWidget {
  final String placeholder;
  final String icon;
  const AkTextField({super.key, required this.placeholder, required this.icon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: Fonts.md,
      decoration: InputDecoration(
        hintText: placeholder,
        prefixIcon: Container(
          padding: const EdgeInsets.only(right: 20, left: 15),
          child: SvgPicture.asset(
            icon,
            color: Colors.white24,
          ),
        ),
        filled: true,
        fillColor: Colors.white10,
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          borderSide: BorderSide(color: Colors.transparent, width: 0),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          borderSide: BorderSide(color: Colors.transparent, width: 0),
        ),
      ),
    );
  }
}
