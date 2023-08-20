import 'package:flutter/material.dart';
import 'package:jeafriday/jeafwidget.dart';
import '../theme/color.dart';


class BdRectangleProduct extends StatelessWidget {
  final Color? focusColor;
  final Color? hoverColor;
  final Color? highlightColor;
  final EdgeInsetsGeometry? margin;
  final BorderRadius? borderRadius;
  final Color? splashColor;
  const BdRectangleProduct(
      {super.key,
      this.focusColor,
      this.hoverColor,
      this.highlightColor,
      this.splashColor,
      this.margin,
      this.borderRadius});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {},
        splashFactory: InkRipple.splashFactory,
        hoverColor: hoverColor ?? BdColorDark.defaultColor,
        splashColor: splashColor ?? const Color.fromARGB(255, 79, 22, 235),
        highlightColor:
            highlightColor ?? const Color.fromARGB(255, 95, 45, 235),
        borderRadius: borderRadius ?? BorderRadius.circular(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
              clipBehavior: Clip.antiAlias,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              child: Image.asset(
                "assets/timeloopexample.jpg",
                width: 400,
                errorBuilder: (context, error, stackTrace) {
                  return const SizedBox(
                    width: 400,
                    child: Placeholder(),
                  );
                },
              ),
            ),
            ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              child: SizedBox(
                width: 400,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      JeaText(
                        text: "Teknoloji",
                        textColor: BdColorDark.textColor,
                        fontSize: 12,
                      ),
                      const SizedBox(width: 5),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: BdColorDark.textColor,
                        size: 16,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
