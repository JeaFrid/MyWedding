import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jeafriday/jeafwidget.dart';

import '../theme/color.dart';
import 'buttons.dart';

class OrderWidget extends StatelessWidget {
  const OrderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: BdColorDark.extraDarkColor,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: Colors.white12,
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(2),
                  child: const Image(
                    width: 70,
                    height: 70,
                    image: AssetImage("assets/yustore.jpg"),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  JeaText(
                    text: "Son Model Telefon",
                    style: GoogleFonts.poppins(
                      color: BdColorDark.textColor,
                      fontSize: 14,
                    ),
                  ),
                  JeaText(
                    text:
                        "Son Model Telefon Son Model Telefon Son Model TelefonSon Model TelefonSon Model TelefonSon Model Telefon",
                    style: GoogleFonts.poppins(
                      color: BdColorDark.textColor,
                      fontSize: 12,
                    ),
                  ),
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
            child: Column(
              children: [
                Row(
                  children: [
                    JeaText(
                      text: "İşlem Tarihi",
                      style: GoogleFonts.poppins(
                        color: BdColorDark.textColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    JeaText(
                      text: "01/02/2000",
                      style: GoogleFonts.poppins(
                        color: BdColorDark.textColor,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    JeaText(
                      text: "Son Güncelleme",
                      style: GoogleFonts.poppins(
                        color: BdColorDark.textColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    JeaText(
                      text: "Hazırlanıyor - 01/02/2000",
                      style: GoogleFonts.poppins(
                        color: BdColorDark.textColor,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    BdIconButton(
                      iconData: Icons.details,
                      text: "Sipariş Detayları",
                      margin: EdgeInsets.all(8),
                    ),
                    BdIconButton(
                      iconData: Icons.contact_support_sharp,
                      text: "Satıcıya Ulaş",
                      margin: EdgeInsets.all(8),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
