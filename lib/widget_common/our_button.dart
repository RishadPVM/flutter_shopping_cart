import 'package:e_commerce/consts/consts.dart';
import 'package:flutter/material.dart';

Widget ourButton({onpress, color, textcolor, String? title}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
        backgroundColor: color, padding: EdgeInsets.all(12)),
    onPressed: onpress,
    child: title!.text.color(textcolor).fontFamily(bold).make(),
  );
}
