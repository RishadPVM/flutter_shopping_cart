import 'package:e_commerce/consts/consts.dart';
import 'package:e_commerce/consts/list.dart';
import 'package:e_commerce/widget_common/applogo_widget.dart';
import 'package:e_commerce/widget_common/bg_widget.dart';
import 'package:e_commerce/widget_common/custom_textfield.dart';
import 'package:e_commerce/widget_common/our_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/route_manager.dart';

class signupScreen extends StatefulWidget {
  const signupScreen({super.key});

  @override
  State<signupScreen> createState() => _signupScreenState();
}

class _signupScreenState extends State<signupScreen> {

  bool? isCheck = false;

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child :Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child:Column(
            children: [
              (context.screenHeight * 0.1).heightBox, 
              applogowidget() ,
              "join the $appname".text.fontFamily(bold).white.size(18).make(),
              15.heightBox,
              Column(
                children: [
                  customTextField(hint: nameHint,title: name),
                  customTextField(hint: emailHint,title: email),
                  customTextField(hint: passwordHint,title: Password ),
                  customTextField(hint: passwordHint,title: retypePassword ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(onPressed: (){}, child: forgetPass.text.make())),
                    5.heightBox,
                   
                   Row(
                    children: [
                      Checkbox(
                        checkColor: redColor,
                        value: isCheck,
                       onChanged: (newvalue) {
                        setState(() {
                          isCheck =newvalue;
                        });
                       },
                      ),
                      10.widthBox,
                      RichText(text:const TextSpan(
                        children: [
                          TextSpan(text: "I aggree to the ",
                          style: TextStyle(
                            fontFamily: regular,
                            color: fontGrey
                          ))
                        ]
                      )),
                      Expanded(
                        child: RichText(text:const TextSpan(
                          children: [
                            TextSpan(text: termAndCond,
                            style: TextStyle(
                              fontFamily: regular,
                              color: redColor
                            ))
                          ]
                        )),
                      ),
                      RichText(text:const TextSpan(
                        children: [
                          TextSpan(text: " & ",
                          style: TextStyle(
                            fontFamily: regular,
                            color: fontGrey
                          )), 
                        ]
                      )),
                      RichText(text:const TextSpan(
                        children: [
                          TextSpan(text: privacyPolicy,
                          style: TextStyle(
                            fontFamily: regular,
                            color: redColor
                          ))
                        ]
                      ))
                    ],
                   ),
                   5.heightBox,
                   ourButton(
                    color: isCheck ==true ? redColor :lightGrey,
                    title: singup,
                    textcolor: whiteColor,
                    onpress: (){}
                   ).box.width(context.screenWidth - 50).make(),
                   10.heightBox,
                   RichText(text:const TextSpan(
                        children: [
                          TextSpan(text: alreadyaveAccount,
                          style: TextStyle(
                            fontFamily: bold,
                            color: fontGrey
                          ))
                        ]
                      )),
                      RichText(text:const TextSpan(
                        children: [
                          TextSpan(text: login,
                          style: TextStyle(
                            fontFamily: bold,
                            color: redColor
                          ))
                        ]
                      )).onTap(() {
                        Get.back();
                        })
                   
                ],
              ).box.white.rounded.padding(const EdgeInsets.all(16)).width(context.screenWidth - 70).shadowSm.make(),
              
            ],
          )
          ),
    ));
  }
}