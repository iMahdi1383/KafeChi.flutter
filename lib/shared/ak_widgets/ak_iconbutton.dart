import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";

class AkIconButton extends StatelessWidget {
  final String icon;
  const AkIconButton({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: [0.0, 0.5, 1.0],
          colors: [
            Color(0x15ffffff),
            Color(0x10ffffff),
            Colors.transparent,
          ],
        ),
      ),
      child: SvgPicture.asset(
        icon,
        color: Colors.white24,
      ),
    );
  }
}
