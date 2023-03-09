import 'dart:js';

import 'package:e_commerce/consts/colors.dart';
import 'package:e_commerce/consts/consts.dart';
import 'package:flutter/cupertino.dart';

Widget DetailsCart({widht,String? count,String? title}){
  return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        count!.text.color(darkFontGrey).fontFamily(bold).size(16).make(),
        5.heightBox,
        title!.text.color(darkFontGrey).make(),
      ],
    ).box.white.rounded.width(widht).height(70).padding(const EdgeInsets.all(4)).make();
                
}