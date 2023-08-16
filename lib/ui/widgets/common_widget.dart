import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget svgButton(VoidCallback onTap, String icon) =>
    IconButton(onPressed: onTap, icon: SvgPicture.asset(icon,));
