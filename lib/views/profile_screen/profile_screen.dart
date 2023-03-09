import 'package:e_commerce/consts/consts.dart';
import 'package:e_commerce/consts/list.dart';
import 'package:e_commerce/views/profile_screen/component/details_cart.dart';
import 'package:e_commerce/widget_common/bg_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        body: SafeArea(
          child: Container(
           // padding: EdgeInsets.all(8),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(onPressed: (){}, icon: Icon(Icons.edit,color: Colors.white,))),
                ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(imgProfile2),),
                  title: "Dummy user".text.fontFamily(semibold).white.make(),
                  subtitle: "custemer@gmail.com".text.white.make(),
                  trailing: OutlinedButton(onPressed: (){}, child: "logout".text.fontFamily(semibold).white.make(),
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(
                      color: whiteColor,
                    )
                  ),
                  ),
                ),
                20.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    DetailsCart(count: "00",title: "your cart",widht: context.screenWidth/4.3),
                    DetailsCart(count: "32",title: "your wishlist",widht: context.screenWidth/4.3),
                    DetailsCart(count: "675",title: "your orders",widht: context.screenWidth/4.3),
                  ],
                ),
                  30.heightBox,
                ListView.separated(
                  shrinkWrap: true,
                   itemBuilder: (BuildContext context,int index) {
                     return ListTile(
                      leading:Image.asset(profilButtonIcons[index],width: 22,),
                      title:profileButtonList[index].text.fontFamily(bold).color(darkFontGrey).make() ,
                     );                   },
                   separatorBuilder: (context, index) {
                     return const  Divider(
                      color: lightGrey,
                     );
                   }, 
                   itemCount: profileButtonList.length,
                   ).box.white.rounded.margin(EdgeInsets.all(12)).padding(const EdgeInsets.symmetric(horizontal: 16)).shadowSm.make()
              ],
            ),
          )
          ),
      )
    );
  }
}