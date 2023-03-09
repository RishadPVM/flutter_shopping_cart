import 'package:e_commerce/views/category_screen/item_details.dart';
import 'package:e_commerce/widget_common/bg_widget.dart';
import 'package:e_commerce/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';

class CategoryDetails extends StatelessWidget {
  final String? title;
  const CategoryDetails({super.key , required this.title});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        appBar: AppBar(title: title!.text.fontFamily(bold).white.make()),
        body: Container(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children:List.generate(6, (index) => 'Body Clothing'.text.fontFamily(semibold).size(12).color(darkFontGrey).makeCentered().box.white.rounded.size(130,50).margin(EdgeInsets.symmetric(horizontal: 4)).make()),
                ),
              ),
                20.heightBox,
              Expanded(child: GridView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: 6,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                mainAxisExtent: 300
                ), itemBuilder: (context, index) {
                  return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              imgP5,
                              width: 150,
                              height: 200,
                              fit: BoxFit.fill,
                            ),
                            10.heightBox,
                            
                            "laptop 4Gb/64SSd Sumthig"
                                .text
                                .fontFamily(semibold)
                                .color(darkFontGrey)
                                .make(),
                            10.heightBox,
                            "\45999"
                                .text
                                .fontFamily(bold)
                                .color(redColor)
                                .size(16)
                                .make()
                          ],
                        )
                            .box
                            .white
                            .margin(const EdgeInsets.symmetric(horizontal: 4))
                            .padding(const EdgeInsets.all(12))
                            .roundedSM
                            .outerShadow
                            .make().onTap(() {
                              Get.to(const ItemDelails(title: "demmiy detais"));
                            });
                },))
            ],
          ),
        ),
      )
    );
  }
}