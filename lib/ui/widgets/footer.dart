import 'dart:js' as js;

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:viking/ui/utils/colors.dart';


class Footer extends StatelessWidget {
  const Footer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.symmetric(vertical: 18.5, horizontal: 18),
          child: RichText(
              textAlign: TextAlign.start,
              text: TextSpan(children: [
                const TextSpan(text: "© Copyright Viking Tours | Design by "),
                TextSpan(
                    text: "Mr.Mojtaba",
                    style: const TextStyle(color: bgPrimaryColor),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => js.context
                          .callMethod("open", ['https://github.com/mes71'])),
              ])),
        )
      ],
    );
  }
}
