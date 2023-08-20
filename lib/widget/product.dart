import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import '../theme/color.dart';

class BdProduct extends StatelessWidget {
  final Image? image;
  final Function()? onTap;
  final String? title;
  final String? description;
  final String? productType;
  final String? price;
  final bool isDigital;

  const BdProduct({
    super.key,
    this.image,
    this.title,
    this.productType,
    this.description,
    this.price,
    required this.isDigital,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: image ??
                    const Image(
                      image: AssetImage("assets/yustore.jpg"),
                      width: 200,
                      height: 200,
                    ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    margin: const EdgeInsets.only(
                        bottom: 2, right: 2, left: 4, top: 10),
                    decoration: BoxDecoration(
                      color: BdColorDark.extraDarkColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      productType ?? "null",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 8,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    margin: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: BdColorDark.extraDarkColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      isDigital == true ? "Dijital Ürün!" : "Fiziksel Ürün!",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 8,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 4),
          InkWell(
            onTap: onTap ?? () {},
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Container(
              padding: const EdgeInsets.all(8.0),

              width: 200,
              //height: 100,
              decoration: BoxDecoration(
                color: BdColorDark.extraDarkColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    title ?? "null",
                    style: GoogleFonts.sarabun(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    description ?? "null",
                    style: GoogleFonts.sarabun(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          price ?? "Null",
                          style: GoogleFonts.sarabun(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
