import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:viking/generated/assets.dart';

import 'common_widget.dart';

class SideBar extends StatelessWidget {
  const SideBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            svgButton(() {
              js.context.callMethod('open', ['https://www.instagram.com/']);
            }, Assets.iconInstagram),
            svgButton(() {
              js.context.callMethod('open', ['https://www.facebook.com/']);
            }, Assets.iconFacebook),
            svgButton(() {
              js.context.callMethod('open', ['https://twitter.com/?lang=en']);
            }, Assets.iconTwitter),
          ],
        ),
        SvgPicture.asset(Assets.iconDesktopLogo)
      ],
    );
  }
}
