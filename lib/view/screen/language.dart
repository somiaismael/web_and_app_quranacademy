
import 'package:brra/core/constant/color.dart';
import 'package:brra/core/constant/imageasset.dart';
import 'package:brra/core/constant/rootsname.dart';
import 'package:brra/core/services/survices.dart';
import 'package:brra/view/widget/language/custombuttomlang.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:brra/core/localization/localcontroller.dart';

class LanguagePage extends GetView<LocalController> {
  const LanguagePage({super.key});

  @override
  Widget build(BuildContext context) {
    MyServices myservices= Get.find();
    return Scaffold(
      backgroundColor:AppColor.lightBrown,
      body: SafeArea(
      child: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text("1".tr,style: TextStyle(
              color: AppColor.darkgrey,
              fontWeight: FontWeight.bold,
              fontSize: 20),),
              SizedBox(height: 20,),
              CustomButtonLang(onPressed: (){
                  controller.changeLang("ar");
            
                  Get.toNamed(AppRoute.onboarding);
              },textbuttun: "2".tr,
              image: ImageAsset.suadiFlage,
              backgroundColor:  Colors.white,),
               SizedBox(height: 10,),
              CustomButtonLang(onPressed: (){
                controller.changeLang("en");
                  Get.toNamed(AppRoute.onboarding);
              },textbuttun: "3".tr,image: ImageAsset.ukFlage,
              backgroundColor: Colors.white,
              ),
          ],
        ),
      ),
    ),
    );
  }
}