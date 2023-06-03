import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";

import "package:kafechi/shared/colors.dart";

class AkButton extends StatelessWidget {
  final void Function()? onTap;
  final String text;
  final String? icon;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? borderColor;

  const AkButton({
    super.key,
    this.onTap,
    required this.text,
    this.icon,
    this.backgroundColor,
    this.textColor,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: onTap ?? () {},
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
          color: backgroundColor ?? Colors.transparent,
          border: Border.all(
            color: borderColor ?? backgroundColor ?? Colors.transparent,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (icon != null)
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: SvgPicture.asset(
                    icon!,
                    color: backgroundColor != null
                        ? Colors.white
                        : textColor ?? ColorPalette.accent,
                  ),
                ),
              Text(
                text,
                style: TextStyle(
                  fontFamily: "dana",
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: backgroundColor != null ? Colors.white : borderColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
