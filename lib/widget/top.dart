import 'package:flutter/material.dart';

class BdTopBar extends StatelessWidget {
  final Image? logo;
  final Widget? widgetLogo;
  final List<Widget>? children;
  const BdTopBar({
    super.key,
    this.logo,
    this.children,
    this.widgetLogo,
  });

  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width < 800 ? mobil() : pc();
  }

  Widget mobil() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 200,
              child: logo ?? widgetLogo ?? const SizedBox(),
            ),
          ),
        ],
      ),
    );
  }

  Padding pc() {
    return Padding(
      padding: const EdgeInsets.only(
        top: 16,
        left: 10,
        right: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 300,
              child: Row(
                children: [
                  Row(
                    children: [
                      logo ?? widgetLogo ?? const SizedBox(),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: children ?? [],
          ),
        ],
      ),
    );
  }
}
