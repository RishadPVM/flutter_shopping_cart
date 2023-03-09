import 'package:e_commerce/consts/consts.dart';
import 'package:flutter/material.dart';

Widget homeButtons({String? title, width, height, icon, onpress}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(
        icon,
        width: 26,
      ),
      10.heightBox,
      title!.text.color(darkFontGrey).fontFamily(semibold).make()
    ],
  ).box.rounded.white.size(width, height).make();
}
