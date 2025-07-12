import 'package:brra/core/constant/color.dart';
import 'package:brra/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopText extends StatelessWidget {
  const TopText({super.key});

  @override
  Widget build(BuildContext context) {
    return   Column(
              children: [
                RichText(text: TextSpan(children: [
                  TextSpan(text: "33".tr,
                  style: Responsive.isDesktop(context)?
                   TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: AppColor.brown)
                   :   TextStyle(fontSize: 45,fontWeight: FontWeight.bold,color: AppColor.brown)),
                   TextSpan(text: "34".tr,
                     style: Responsive.isDesktop(context)?
                   TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.white)
                   :   TextStyle(fontSize: 45,fontWeight: FontWeight.bold,color:Colors.white)),
                ])),
                Text("35".tr,
                     style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: AppColor.darkgrey),)
              ],
            );
  }
}