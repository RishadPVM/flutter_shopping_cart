import 'package:e_commerce/consts/consts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      color:Colors.white,
      child: Center(child: "Card is Empty".text.fontFamily(semibold).color(darkFontGrey).make(),)
      );
  }
}