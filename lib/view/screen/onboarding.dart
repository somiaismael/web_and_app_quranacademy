import 'package:brra/core/constant/color.dart';
import 'package:brra/core/constant/imageasset.dart';
import 'package:brra/core/constant/rootsname.dart';
import 'package:brra/core/services/survices.dart';
import 'package:brra/view/widget/onboarding/onboardingbutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
   MyServices myServices =Get.find();
    return Scaffold(
      backgroundColor:AppColor.lightBrown,
      body: SafeArea(child: 
      Container(
        width: double.infinity,
        child: Column(
         mainAxisAlignment: MainAxisAlignment.center,

          children: [
        Text("4".tr,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: AppColor.meduimbrown) ,),
                SizedBox(height: 20,),

         Column(
           children: [
             Image.asset("assets/images/logo.png",height: 150,width: 150,),
             Container(
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
               child:
                RichText(text: TextSpan(children: [
                  TextSpan(text:  "5".tr,
                  style:myServices.sharedPreferences.getString("lang")=="en"?
                         TextStyle(fontWeight: FontWeight.w600,fontSize:20,color:AppColor.darkgrey)
                        :TextStyle(fontWeight: FontWeight.bold,fontSize:30,color:AppColor.darkgrey) ),
                         TextSpan(text:  "6".tr,
                         style:myServices.sharedPreferences.getString("lang")=="en"?
                         TextStyle(fontWeight: FontWeight.w600,fontSize:20,color:AppColor.primarycolor)
                        :TextStyle(fontWeight: FontWeight.bold,fontSize:30,color:AppColor.primarycolor)  ),
                ])),
             ),
          
           ],
         ),
           SizedBox(height: 150,),
          OnboardingButton(backgroundColor: AppColor.primarycolor,textbuttun: "7".tr,onPressed: (){
            Get.offAllNamed(AppRoute.mainscreen);
          },)
          ],
        ),
      )),
    );
  }
}