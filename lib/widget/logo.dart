import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogoProject extends StatelessWidget {
  final Function()? onTap;
  final String? text;
  final double? size;
  const LogoProject({super.key, this.text, this.size, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            text ?? "ByBug Project's",
            textAlign: TextAlign.center,
            style: GoogleFonts.pacifico(
              color: Colors.white,
              fontSize: size ?? 34,
            ),
          ),
        ],
      ),
    );
  }
}
