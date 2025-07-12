import 'package:brra/core/constant/rootsname.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactUsController extends GetxController{
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
 late TextEditingController name;
 late TextEditingController email;
 late TextEditingController phone;
 late TextEditingController message;


 onTapSubmit(){
  if (formstate.currentState!.validate()) {
    print(name);
Get.toNamed(AppRoute.success);
  }
 }

 @override
  void onInit() {
    name=TextEditingController();
     email=TextEditingController();
      phone=TextEditingController();
       message=TextEditingController();
    // TODO: implement onInit
    super.onInit();
  }


  @override
  void dispose() {
    // TODO: implement dispose
    name.dispose();
    email.dispose();
    phone.dispose();
    message.dispose();
    super.dispose();
    
  }
}