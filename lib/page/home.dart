import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jeafriday/jeafwidget.dart';
import 'package:mary/theme/color.dart';
import 'package:mary/utils/clock.dart';
import 'package:mary/widget/backphoto.dart';
import 'package:mary/widget/body.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  IconData iconData = Icons.timelapse_outlined;
  MaryTime maryTime = Get.put(MaryTime());
  @override
  void initState() {
    super.initState();
    maryTime.countDown();
 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BdColorDark.backgroundColor,
      body: BdBackgroundPhoto(
          opacity: 1,
          image: AssetImage("assets/bg.jpg"),
          child: Stack(
            children: [
              back(),
              front(context),
            ],
          )),
    );
  }

  Widget back() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100, left: 50),
              child: Image.asset(
                "assets/ring.jpg",
                width: 200,
                height: 200,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget front(BuildContext context) {
    return BdBody(
      scrollable: true,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100, left: 60),
              child: JeaText(
                text: "B & B",
                style: GoogleFonts.allura(
                  color: Color.fromARGB(255, 44, 30, 14),
                  fontSize: 60,
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 2, left: 60),
              child: JeaText(
                text: "Bengisu & Batuhan",
                style: GoogleFonts.alexBrush(
                  color: Color.fromARGB(255, 44, 30, 14),
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 2, left: 60),
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.5,
                child: JeaText(
                  text:
                      "Bu özel günümüzde, sizleri de yanımızda görmekten mutluluk duyarız.",
                  style: GoogleFonts.aBeeZee(
                    color: Color.fromARGB(255, 44, 30, 14),
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 10,
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10, left: 60),
              width: MediaQuery.sizeOf(context).width * 0.55,
              height: 0.8,
              decoration: BoxDecoration(
                color: Color.fromARGB(180, 44, 30, 14),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 60),
          child: SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.5,
            child: JeaText(
              text: "22.08.2023 | 14:00\nHATAY/REYHANLI",
              style: GoogleFonts.aBeeZee(
                color: Color.fromARGB(255, 44, 30, 14),
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 10,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 70,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 80),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx( () => 
                     Icon(
                      maryTime.targetValue.value == "Biz Evlendik!" ?  iconData = Icons.favorite :  iconData = Icons.timelapse_outlined,


                      color: Colors.black.withOpacity(0.5),
                      size: 26,
                    ),
                  ),
                  Obx(
                    () => JeaText(
                      text: maryTime.targetValue.value,
                      style: GoogleFonts.aBeeZee(
                        color: Colors.black.withOpacity(0.5),
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
