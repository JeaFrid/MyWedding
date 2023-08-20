import 'package:flutter/material.dart';

import '../theme/color.dart';

class VitrinWidget extends StatelessWidget {
  const VitrinWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: InkWell(
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: BdColorDark.extraDarkColor,
            borderRadius: BorderRadius.circular(5),
          ),
          width: 300,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: const Image(
              image: AssetImage("assets/vitrinexample.jpg"),
            ),
          ),
        ),
      ),
    );
  }
}
