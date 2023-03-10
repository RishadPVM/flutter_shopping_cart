import 'package:e_commerce/consts/consts.dart';
import 'package:e_commerce/consts/list.dart';
import 'package:e_commerce/views/category_screen/category_details.dart';
import 'package:e_commerce/widget_common/bg_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        appBar: AppBar(
          title: categories.text.fontFamily(bold).make(),
        ),
        body: Container(
          padding:const EdgeInsets.all(12),
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: 9,
            gridDelegate:const
                SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  mainAxisExtent: 200,
                  ),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Image.asset(categoryImage[index],
                  height: 120,
                  width: 200,
                  fit: BoxFit.cover,
                  ),
                  30.heightBox,
                  categoryList[index].text.color(darkFontGrey).align(TextAlign.center).make()
                ],
              ).box.white.rounded.clip(Clip.antiAlias).shadowSm.make().onTap(() {
                Get.to(CategoryDetails(title: categoryList[index]));
              });
            },
          ),
        ),
      ),
    );
  }
}
