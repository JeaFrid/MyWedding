
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jeafriday/jeafwidget.dart';
import '../theme/color.dart';

class CommentWidget extends StatelessWidget {
  final BoxConstraints constraints;
  const CommentWidget({
    super.key,
    required this.constraints,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      width: constraints.maxWidth,
      decoration: BoxDecoration(
        color: BdColorDark.extraDarkColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          JeaText(
            text: "Kullanıcı Yorumu",
            style: GoogleFonts.poppins(
              color: BdColorDark.textColor,
              fontSize: 14,
            ),
          ),
          JeaText(
            textAlign: TextAlign.left,
            text: "Bu kedi aşırı güzel, çok beğendim.",
            style: GoogleFonts.poppins(
              color: BdColorDark.textColor,
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}
